package service;

import bean.User;
import repository.UserRepositoryImpl;

import java.util.List;

public class UserServiceImpl implements UserService {
    private final UserRepositoryImpl userRepository = new UserRepositoryImpl();

    @Override
    public List<User> selectAllUser() {
        return userRepository.selectAllUser();
    }

    @Override
    public User userEdit(int id) {
        return userRepository.userEdit(id);
    }

    @Override
    public boolean edit(int id,User user) {
        return userRepository.edit(user);
    }

    @Override
    public boolean insert(User user) {
        return userRepository.insert(user);
    }

    @Override
    public boolean delete(int id) {
        return userRepository.delete(id);
    }

    @Override
    public List<User> searchByCountry(String country) {
        return userRepository.searchByCountry(country);
    }

    @Override
    public List<User> sortByName() {
        return userRepository.sortByName();
    }
}
