package soccer.game.streetsoccermanager.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import soccer.game.streetsoccermanager.model.entities.PlayerPositionInfo;
import soccer.game.streetsoccermanager.repository_interfaces.IPlayerPositionInfoRepository;
import soccer.game.streetsoccermanager.repository_interfaces.jpa.IPlayerPositionInfoJPARepository;

import java.util.List;

@Repository
public class PlayerPositionInfoJPADatabase implements IPlayerPositionInfoRepository {

    private IPlayerPositionInfoJPARepository playerPositionInfoRepo;

    @Autowired
    public PlayerPositionInfoJPADatabase(IPlayerPositionInfoJPARepository playerPositionInfoRepo) {
        this.playerPositionInfoRepo = playerPositionInfoRepo;
    }


    @Override
    public List<PlayerPositionInfo> getAll() {
        return playerPositionInfoRepo.findAll();
    }

    @Override
    public PlayerPositionInfo get(Long id) {
        return playerPositionInfoRepo.findById(id).orElse(null);
    }

    @Override
    public Boolean delete(Long id) {
        playerPositionInfoRepo.deleteById(id);
        return true;
    }

    @Override
    public PlayerPositionInfo add(PlayerPositionInfo playerPositionInfo) {
        return playerPositionInfoRepo.save(playerPositionInfo);
    }

    @Override
    public PlayerPositionInfo update(PlayerPositionInfo playerPositionInfo) {
        return playerPositionInfoRepo.save(playerPositionInfo);
    }

    @Override
    public void deleteAll() {
        playerPositionInfoRepo.deleteAll();
    }
}
