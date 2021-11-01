package soccer.game.streetSoccerManager.model.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Objects;
import java.util.Set;


@Entity
@Table(name ="formation")
@NoArgsConstructor
@Data
public class Formation {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name; // 1-2-1

    @OneToMany(mappedBy="formation")
    @JsonIgnore
    private Set<Team> teams;


    public Formation(Long id, String name) {
        this.id = id;
        this.name = name;
    }
}
