import React, {useState} from "react";
import { Link } from 'react-router-dom';

function Player({player, rotationMode, handleRotation, changeRotationMode}) {
  

  const openRotationPlayerContainer = () => {
    // save player id in local storage
    localStorage.setItem('playerForRotationId', player.id);
    changeRotationMode();
  }

  const handleChosenPlayerForRotation = () => {
    handleRotation(player);
  }
 
  return (
    <div className={`player player-${player.id}`} onClick={rotationMode == true ? handleChosenPlayerForRotation : undefined}>
        {rotationMode != true ?
        (
          <button className={`rotate-player-btn-${player.id}`} onClick={openRotationPlayerContainer}><i className="fas fa-exchange-alt"></i></button>
        )
        :
        (<></>)
        }
        <div>
          <span className="fa-stack fa-2x">
            <i className="fas fa-tshirt fa-stack-2x"></i>
            <strong className="fa-stack-1x shirt-text">{player.playerTeamInfo.kitNr}</strong>
          </span>
        </div>
        <div>{player.playerPersonalInfo.firstName[0]}.{player.playerPersonalInfo.lastName}</div>
        <hr/>
        <div>{player.playerPositionInfo.currentPosition.name}</div>
        <div>OVR:{(player.playerAdditionalInfo.playerStats.skills + player.playerAdditionalInfo.playerStats.physical)/2}</div>
       
        
        
    </div>
  );
}

export default Player;