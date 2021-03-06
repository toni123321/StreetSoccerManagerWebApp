package soccer.game.streetsoccermanager.service_interfaces;

import soccer.game.streetsoccermanager.model.entities.Team;

import java.util.List;

public interface ITeamService {
    List<Team> getAll();
    Team get(Long id);
    Boolean delete(Long id);
    Team add(Team team);
    Team update(Team team);

    List<Team> getCustomTeams();
    List<Team> getOfficialTeams();
    void deleteAll();
    Team getTeamByUserId(Long id);

}
