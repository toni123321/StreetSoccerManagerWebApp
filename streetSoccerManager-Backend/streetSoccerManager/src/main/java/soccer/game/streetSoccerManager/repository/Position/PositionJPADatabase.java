package soccer.game.streetSoccerManager.repository.Position;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import soccer.game.streetSoccerManager.model.entities.Position;
import soccer.game.streetSoccerManager.repository_interfaces.IPositionRepository;
import soccer.game.streetSoccerManager.repository_interfaces.jpa.IPositionJPARepository;

import java.util.List;

@Repository
public class PositionJPADatabase implements IPositionRepository {

    @Autowired
    IPositionJPARepository positionRepo;

    @Override
    public List<Position> getAll() {
        return positionRepo.findAll();
    }

    @Override
    public Position get(Long id) {
        Position position = positionRepo.findById(id).orElse(null);
        return position;
    }

    @Override
    public Position get(String searchedName) {
        return positionRepo.findFirstByName(searchedName);
    }

    @Override
    public Boolean delete(Long id) {
        if(get(id) != null) {
            positionRepo.deleteById(id);
            return true;
        }
        return false;
    }

    @Override
    public Position add(Position position) {
        if(position.getId() == null) {
            return positionRepo.save(position);
        }
        return null;
    }

    @Override
    public Position update(Position position) {
        if(position.getId() != null) {
            return positionRepo.save(position);
        }
        return null;
    }

    @Override
    public void deleteAll() {
        positionRepo.deleteAll();
    }
}
