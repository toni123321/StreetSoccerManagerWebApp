import React, {useEffect, useState} from 'react';
import PlayerService from '../../../services/PlayerService';
import Player from '../Player/Player';
import PlayerPositionInfoService from '../../../services/PlayerPositionInfoService';
import Cookies from 'universal-cookie';


function RotatePlayersContainer({handleRotationOfPlayers, changeRotationMode}) {
    const cookies = new Cookies();
    const token = cookies.get('login-token');

    const playerInitialState = {
        id: null,
        playerPersonalInfo: {
            id: null,
            firstName: "",
            lastName: ""
        },
        playerPositionInfo: {
            id: null,
            defaultPosition: null,
            currentPosition: null,
            starting: true
        },
        playerTeamInfo: {
            id: null,
            team: {
                id:null
            }
        },
        playerAdditionalInfo: null
    }

    const [playerForRotation, setPlayerForRotation] = useState(playerInitialState);
    const [playerToRotateWith, setPlayerToRotateWith] = useState(playerInitialState);
    const [playersAvailableForRotation, setPlayersAvailableForRotation] = useState(null);

    useEffect(() => {
        
        const playerForRotationId = localStorage.getItem("playerForRotationId");
        if (playerForRotationId) {

          retrievePlayer(playerForRotationId);
        } 
    }, []);

    async function retrievePlayer(id) {
        const response = await PlayerService.get(id, token);
        setPlayerForRotation(response.data);
        retrievePlayersAvailableForRotation(response.data.playerTeamInfo.team.id, response.data.id);
    }

    const retrievePlayersAvailableForRotation = (teamId, playerToSwapId) => {
        PlayerService.getAllInTeamAvailableForSwapping(teamId, playerToSwapId, token)
        .then(response => {
          setPlayersAvailableForRotation(response.data);
        })
        .catch(e => {
          console.log(e);
        });
    }

    const closeRotationContainer = () => {
        changeRotationMode();
    }

    const handleRotation = (player) => {
        setPlayerToRotateWith(player);
        
    }

    const handlePostPlayers = () => {
        const playerForRotationPositionInputData = {
            id: playerForRotation.playerPositionInfo.id,
            defaultPosition: playerForRotation.playerPositionInfo.defaultPosition,
            currentPosition:  playerToRotateWith.playerPositionInfo.currentPosition,
            starting: playerToRotateWith.playerPositionInfo.starting
        }

        const playerToRotateWithPositionInputData = {
            id: playerToRotateWith.playerPositionInfo.id,
            defaultPosition:playerToRotateWith.playerPositionInfo.defaultPosition ,
            currentPosition: playerForRotation.playerPositionInfo.currentPosition,
            starting: playerForRotation.playerPositionInfo.starting
        }
        
        PlayerPositionInfoService.update(playerForRotationPositionInputData, token)
        .then(response => {
            
        })
        .catch(e => {
            console.log(e);
        });

        PlayerPositionInfoService.update(playerToRotateWithPositionInputData, token)
        .then(response => {
            
        })
        .catch(e => {
            console.log(e);
        });
        handleRotationOfPlayers(playerForRotationPositionInputData, playerToRotateWithPositionInputData);
        console.log("Change players positions")
    }

    return (
        <>
            <div className="playerForRotation">
                {playerForRotation.playerPersonalInfo.firstName[0]}.{playerForRotation.playerPersonalInfo.lastName}
            </div>
           

            {/* Container with available for swapping players */}
            <div className="availableForSwapping">
                {playersAvailableForRotation && playersAvailableForRotation.map((player) => (
                    <Player key={player.id} player={player} rotationMode={true} handleRotation={handleRotation}
                    />
                ))}
            </div>

            {playerToRotateWith.id !== null ?
                (
                <div className="playerToRotateWith">
                    <Player key={playerToRotateWith.id} player={playerToRotateWith} rotationMode={false}/>
                </div>
                ):
                (<></>)
            }

            <br/>
            <button className="rotatePlayers go-back-btn" onClick={closeRotationContainer}>Back</button>

            <button className="rotatePlayers rotate-players-btn" onClick={handlePostPlayers}>Confirm</button>


        </>
    );
}

export default RotatePlayersContainer;