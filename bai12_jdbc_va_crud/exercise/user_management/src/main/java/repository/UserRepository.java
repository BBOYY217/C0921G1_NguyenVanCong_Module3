package repository;

import bean.User;

import java.util.List;

public interface UserRepository {
    List<User> selectAllUser();
    User userEdit (int id);
    boolean edit(User userObj);
    boolean insert(User user);
    boolean delete(int id);
    List<User> searchByCountry(String country);
    List<User> sortByName();
}
