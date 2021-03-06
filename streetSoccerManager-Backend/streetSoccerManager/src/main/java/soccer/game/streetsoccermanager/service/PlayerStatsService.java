package soccer.game.streetsoccermanager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import soccer.game.streetsoccermanager.model.entities.PlayerStats;
import soccer.game.streetsoccermanager.repository_interfaces.IPlayerStatsRepository;
import soccer.game.streetsoccermanager.service_interfaces.IPlayerStatsService;

import java.util.List;

@Service
public class PlayerStatsService implements IPlayerStatsService {
    private IPlayerStatsRepository dataStore;

    @Autowired
    public PlayerStatsService(IPlayerStatsRepository dataStore) {
        this.dataStore = dataStore;
    }

    @Override
    public List<PlayerStats> getAll() {
        return dataStore.getAll();
    }

    @Override
    public PlayerStats get(Long id) {
        return dataStore.get(id);
    }

    @Override
    public Boolean delete(Long id) {
        if(get(id) != null) {
            dataStore.delete(id);
            return true;
        }
        return false;
    }

    @Override
    public PlayerStats add(PlayerStats stat) {
        if(stat.getId() == null) {
            return dataStore.add(stat);
        }
        return null;
    }

    @Override
    public PlayerStats update(PlayerStats stat) {
        if(stat.getId() != null) {
            return dataStore.update(stat);
        }
        return null;
    }

    @Override
    public void deleteAll() {
        dataStore.deleteAll();
    }

}
