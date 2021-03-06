package soccer.game.streetsoccermanager.integration_tests;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import soccer.game.streetsoccermanager.exceptions.EntryNotValidException;
import soccer.game.streetsoccermanager.model.entities.UserEntity;
import soccer.game.streetsoccermanager.service.UserService;

import javax.persistence.EntityExistsException;
import java.util.ArrayList;
import java.util.List;

@ActiveProfiles("test")
@SpringBootTest
class UserIntegrationTest {
    //Arrange
    @Autowired
    UserService userService;
    List<UserEntity> users = new ArrayList<>();
    List<UserEntity> usersExpected = new ArrayList<>();

    @BeforeEach
    void clearDB() throws EntryNotValidException, EntityExistsException {
        // Clear
        userService.deleteAll();
        usersExpected.clear();

        // Add
        userService.add(new UserEntity("peter@gmail.com", "Peter@123", "Peter", "Petrov", "pesho", "USER"));
        userService.add(new UserEntity("john@gmail.com", "John@Travel1", "John", "Bradley", "jo", "ADMIN"));
        users = userService.getAll();
        usersExpected.add(new UserEntity(users.get(0).getId(), "peter@gmail.com", users.get(0).getPassword(), "Peter", "Petrov", "pesho", "USER"));
        usersExpected.add(new UserEntity(users.get(1).getId(), "john@gmail.com", users.get(1).getPassword(), "John", "Bradley", "jo", "ADMIN"));

    }

    @Test
    void getAllUsersSuccessScenario() {
        // Assert
        Assertions.assertEquals(usersExpected, userService.getAll()) ;
    }


    @Test
    void GetUserByIdSuccessScenario() {
        // Act
        UserEntity user = userService.get(users.get(0).getId());

        // Assert
        Assertions.assertEquals(new UserEntity(users.get(0).getId(), "peter@gmail.com", users.get(0).getPassword(), "Peter", "Petrov", "pesho", "USER"), user);
    }

    @Test
    void GetUserByEmailSuccessScenario() {
        // Act
        UserEntity user = userService.getByEmail(users.get(0).getEmail());

        // Assert
        Assertions.assertEquals(new UserEntity(users.get(0).getId(), "peter@gmail.com", users.get(0).getPassword(), "Peter", "Petrov", "pesho", "USER"), user);
    }

    @Test
    void DeleteUserSuccessScenario(){
        // Act
        userService.delete(users.get(0).getId());
        usersExpected.remove(0);

        // Assert
        Assertions.assertEquals(usersExpected, userService.getAll());
    }

    @Test
    void AddUserSuccessScenario() throws EntryNotValidException, EntityExistsException {
        // Act
        userService.add(new UserEntity("erick@gmail.com", "Erick@12345", "Erick", "Hill", "erick25", "USER"));
        users = userService.getAll();
        Long lastIndexId = users.get(users.size() - 1).getId();
        int lastIndex = users.size() - 1;
        usersExpected.add(new UserEntity(lastIndexId, "erick@gmail.com", users.get(lastIndex).getPassword(), "Erick", "Hill", "erick25", "USER"));

        // Assert
        Assertions.assertEquals(usersExpected, userService.getAll());
    }

    @Test
    void UpdateUserSuccessScenario(){
        // Act
        userService.update(new UserEntity(users.get(0).getId(), "peter@gmail.com", "Peter@123", "Peter", "Petrov", "pesho@go", "USER"));
        users = userService.getAll();
        usersExpected.set(0, new UserEntity(users.get(0).getId(), "peter@gmail.com", users.get(0).getPassword(), "Peter", "Petrov", "pesho@go", "USER"));

        // Assert
        Assertions.assertEquals(usersExpected, userService.getAll());
    }
}
