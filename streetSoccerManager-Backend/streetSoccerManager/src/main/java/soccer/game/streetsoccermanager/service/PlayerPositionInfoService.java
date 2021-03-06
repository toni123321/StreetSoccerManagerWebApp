package soccer.game.streetsoccermanager.service;

import org.modelmapper.ModelMapper;
import org.modelmapper.convention.MatchingStrategies;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import soccer.game.streetsoccermanager.model.entities.PlayerPositionInfo;
import soccer.game.streetsoccermanager.repository_interfaces.IPlayerPositionInfoRepository;
import soccer.game.streetsoccermanager.service_interfaces.IPlayerPositionInfoService;

import java.util.List;

@Service
public class PlayerPositionInfoService implements IPlayerPositionInfoService {
    private IPlayerPositionInfoRepository dataStore;
    private ModelMapper modelMapper;

    @Autowired
    public PlayerPositionInfoService(IPlayerPositionInfoRepository dataStore) {
        this.dataStore = dataStore;
        modelMapper = new ModelMapper();
        modelMapper.getConfiguration().setMatchingStrategy(MatchingStrategies.STRICT);
    }

    @Override
    public List<PlayerPositionInfo> getAll() {
        return dataStore.getAll();
    }

    @Override
    public PlayerPositionInfo get(Long id) {
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
    public PlayerPositionInfo add(PlayerPositionInfo playerPositionInfo) {
        if(playerPositionInfo.getId() == null) {
            return dataStore.add(playerPositionInfo);
        }
        return null;
    }

    @Override
    public PlayerPositionInfo update(PlayerPositionInfo playerPositionInfo) {
        if(playerPositionInfo.getId() != null) {
            return dataStore.update(playerPositionInfo);
        }
        return null;
    }

    @Override
    public void deleteAll() {
        dataStore.deleteAll();
    }

}
