package soccer.game.streetsoccermanager.model.entities;

import lombok.*;
import javax.persistence.Entity;


@Entity
@NoArgsConstructor
@Data
public class OfficialTeam extends Team{

    private String managerName; // First and Last name of managers

    public OfficialTeam(Long id, String name, Formation formation, String managerName) {
        super(id, name, formation);
        this.managerName = managerName;
    }

    public OfficialTeam(String name, Formation formation, String managerName) {
        super(name, formation);
        this.managerName = managerName;
    }


}
