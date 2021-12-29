package repository;

import bean.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserRepositoryImpl implements UserRepository {
    @Override
    public List<User> selectAllUser() {
        List<User> userList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("SELECT id, namer, email ,country\n" + "FROM users");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                User userObj = new User();
                userObj.setId(Integer.parseInt(resultSet.getString("id")));
                userObj.setName(resultSet.getString("namer"));
                userObj.setEmail(resultSet.getString("email"));
                userObj.setCountry(resultSet.getString("country"));
                userList.add(userObj);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return userList;
    }

    @Override
    public User userEdit(int id) {
        return null;
    }

    @Override
    public boolean edit(User userObj) {
        try {
            PreparedStatement preparedStatement = BaseRepository.connection.prepareStatement("UPDATE users\n" +
                    "SET namer = ?,email = ?,country = ?\n" +
                    "WHERE id = ?");

            preparedStatement.setString(1, userObj.getName());
            preparedStatement.setString(2, userObj.getEmail());
            preparedStatement.setString(3, userObj.getCountry());
            preparedStatement.setInt(4, Integer.parseInt(String.valueOf(userObj.getId())));
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean insert(User userObj) {
        try {
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("INSERT INTO users(namer,email,country)\n" +
                            "VALUES (?,?,?)");
            preparedStatement.setString(1, userObj.getName());
            preparedStatement.setString(2, userObj.getEmail());
            preparedStatement.setString(3, userObj.getCountry());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        try {
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("DELETE FROM users\n" +
                            "WHERE id = ?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    @Override
    public List<User> searchByCountry(String country) {
        List<User> userList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("SELECT id ,namer ,email ,country\n" +
                            "FROM users\n" +
                            "WHERE country = ?");
            preparedStatement.setString(1, country);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                User userObj = new User();
                userObj.setId(Integer.parseInt(resultSet.getString("id")));
                userObj.setName(resultSet.getString("namer"));
                userObj.setName(resultSet.getString("email"));
                userObj.setName(resultSet.getString("country"));
                userList.add(userObj);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }

    @Override
    public List<User> sortByName() {
        List<User> userList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("SELECT * FROM uses\n" +
                            "ORDER BY name ");
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                User userObj = new User();
                userObj.setId(Integer.parseInt(resultSet.getString("id")));
                userObj.setName(resultSet.getString("namer"));
                userObj.setEmail(resultSet.getString("email"));
                userObj.setCountry(resultSet.getString("country"));
                userList.add(userObj);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return userList;
    }
}
