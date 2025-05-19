package kkpl.repo;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import kkpl.model.User;

import java.util.List;

@Repository
public class UserRepository {

    private final JdbcTemplate jdbc;

    public UserRepository(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    // RowMapper
    private final RowMapper<User> rowMapper = (rs, rowNum) ->
        new User(rs.getString("id"), rs.getString("name"));

    // Insert user
    public int save(User user) {
        String sql = "INSERT INTO users (id, name) VALUES (?, ?)";
        return jdbc.update(sql, user.getId(), user.getName());
    }

    // Fetch all users
    public List<User> findAll() {
        return jdbc.query("SELECT * FROM users", rowMapper);
    }

    // Find by ID
    public User findById(String id) {
        return jdbc.queryForObject("SELECT * FROM users WHERE id = ?", rowMapper, id);
    }
}