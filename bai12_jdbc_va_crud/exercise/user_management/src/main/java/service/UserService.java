package service;

import bean.User;

import java.util.List;

public interface UserService {
    List<User> selectAllUser();
    User userEdit (int id);
    boolean edit(int id,User user);
    boolean insert(User user);
    boolean delete(int id);
    List<User> searchByCountry(String country);
    List<User> sortByName();

}
