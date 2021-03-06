package soccer.game.streetsoccermanager.model.dtos;

import lombok.Data;
import lombok.NoArgsConstructor;
import soccer.game.streetsoccermanager.model.entities.Formation;

@Data
@NoArgsConstructor
public class OfficialTeamDTO{
    private Long id;
    private String name;
    private Formation formation;
    private String managerName;

}


