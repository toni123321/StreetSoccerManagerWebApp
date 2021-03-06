import React from 'react';
import {useState, useEffect} from "react";
import TeamService from "../../../services/TeamService";
import styles from "../../../css/CreateTeam.scss";
import CreateTeamForm from './CreateTeamForm';
import GameNavbar from '../GameNavbar/GameNavbar';
import { useHistory } from 'react-router-dom';
import Cookies from 'universal-cookie';

import FormationService from '../../../services/FormationService';

function CreateTeam() {
    let history = useHistory();
    const cookies = new Cookies();

    const initialTeamState = {
        id: null,
        name: "",
        formation: {
            id:null,
            name: ""
        },
        manager: {
            id: 1,
            email: "peter@gmail.com",
            password: "123"
        }
    }
    const [team, setTeam] = useState(initialTeamState);

    const [submitted, setSubmitted] = useState(false);

    useEffect(() => {
        // if(cookies.get('login-token') === undefined){
        //     history.push("/login");
        // }

        let createdTeam;
        setTimeout(function() {
            createdTeam = localStorage.getItem("team");

            console.log("Created team: ", createTeam);
            if (createdTeam) {
                const foundTeam = JSON.parse(createdTeam);
                setTeam(foundTeam);
                setSubmitted(true);
                console.log("Submitted", submitted);
            }

        }, 50);
      }, []);

    const createTeam = (teamName) => {
        console.log("Team name:", teamName);
        const data = {
            name: teamName,
            manager: team.manager
        }

        TeamService.create(data)
            .then(response => {
               setTeam({
                   id: response.data.id,
                   name: response.data.name,
                   formation: {
                       id: response.data.formation.id,
                       name: response.data.formation.name
                   },
                   manager: response.data.manager
                });
               setSubmitted(true);
               console.log(response.data);   
               localStorage.setItem('team', JSON.stringify(response.data));

            })
            .catch(e => { console.log(e)});
        console.log(team.name);
        console.log("Created team: ", localStorage.getItem("team"));
        
    };

    const newTeam = () => {
        setTeam(initialTeamState);
        setSubmitted(false);
        localStorage.removeItem("team");
    };

    return (
        <div>
            {submitted ? 
            (
                <>
                <GameNavbar team={team}/>
                {/* <button onClick={newTeam}>
                    Add
                </button> */}
                </>
            ) 
            :
            (<CreateTeamForm createTeam={createTeam}/>)
            }
            
        </div>
    );
}

export default CreateTeam;