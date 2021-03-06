package soccer.game.streetsoccermanager.service_interfaces;

import soccer.game.streetsoccermanager.model.entities.PlayerTeamInfo;

import java.util.List;

public interface IPlayerTeamInfoService {
    List<PlayerTeamInfo> getAll();
    PlayerTeamInfo get(Long id);
    Boolean delete(Long id);
    PlayerTeamInfo add(PlayerTeamInfo playerTeamInfo);
    PlayerTeamInfo update(PlayerTeamInfo playerTeamInfo);
    void deleteAll();
}
