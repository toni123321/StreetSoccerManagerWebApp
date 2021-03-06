package soccer.game.streetsoccermanager.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import soccer.game.streetsoccermanager.model.entities.PlayerPersonalInfo;
import soccer.game.streetsoccermanager.repository_interfaces.IPlayerPersonalInfoRepository;
import soccer.game.streetsoccermanager.repository_interfaces.jpa.IPlayerPersonalInfoJPARepository;

import java.util.List;

@Repository
public class PlayerPersonalInfoJPADatabase implements IPlayerPersonalInfoRepository {

    private IPlayerPersonalInfoJPARepository playerPersonalInfoJPARepo;

    @Autowired
    public PlayerPersonalInfoJPADatabase(IPlayerPersonalInfoJPARepository playerPersonalInfoJPARepo) {
        this.playerPersonalInfoJPARepo = playerPersonalInfoJPARepo;
    }

    @Override
    public List<PlayerPersonalInfo> getAll() {
        return playerPersonalInfoJPARepo.findAll();
    }

    @Override
    public PlayerPersonalInfo get(Long id) {
        return playerPersonalInfoJPARepo.findById(id).orElse(null);
    }

    @Override
    public Boolean delete(Long id) {
        playerPersonalInfoJPARepo.deleteById(id);
        return true;
    }

    @Override
    public PlayerPersonalInfo add(PlayerPersonalInfo playerPersonalInfo) {
        return playerPersonalInfoJPARepo.save(playerPersonalInfo);
    }

    @Override
    public PlayerPersonalInfo update(PlayerPersonalInfo playerPersonalInfo) {
        return playerPersonalInfoJPARepo.save(playerPersonalInfo);
    }

    @Override
    public void deleteAll() {
        playerPersonalInfoJPARepo.deleteAll();
    }
}
