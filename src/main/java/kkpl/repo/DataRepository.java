package kkpl.repo;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Repository
public class DataRepository {

    private final JdbcTemplate jdbc;

    public DataRepository(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }
//
//    // RowMapper
//    private final RowMapper<User> rowMapper = (rs, rowNum) ->
//        new User(rs.getString("id"), rs.getString("name"));
//
//    // Insert user
    public int updateData(String tableName, Map<String, Object> data) {
    	List<String> updateFields = new ArrayList();
        List<Object> values = new ArrayList();

        for (Map.Entry<String, Object> entry : data.entrySet()) {
            String key = entry.getKey();
            if (!key.equals("id")) {
                updateFields.add(key + " = ?");
                values.add(entry.getValue());
            }
        }

        // Add primary key value at the end (for WHERE clause)
        values.add(data.get("id"));

        String sql = "UPDATE " + tableName + " SET " + String.join(", ", updateFields) + " WHERE id = ?";

        return jdbc.update(sql, values.toArray());
//        String sql = "INSERT INTO users (id, name) VALUES (?, ?)";
//        return jdbc.update(sql, user.getId(), user.getName());
    }
//
//    // Fetch all users
    public List<Map<String, Object>> getDataList(String tableName) {
        return jdbc.queryForList("SELECT * FROM "+tableName);
    }
    
    public List<Map<String, Object>> getColDefs(String tableName) {
        return jdbc.queryForList("SELECT COLUMN_NAME, DATA_TYPE FROM information_schema.columns WHERE table_schema = 'kkpl' AND table_name = '"+tableName+"' ORDER BY ORDINAL_POSITION; ");
    }
    
    public List<String> getReports() {
    	List<String> result = new ArrayList<>();
    	List<Map<String, Object>> resultSet = jdbc.queryForList("SELECT table_name FROM information_schema.tables WHERE table_schema = 'kkpl' ORDER BY table_name ASC");
    	for(Map<String, Object> map: resultSet) {
    		result.add(map.get("table_name").toString());
    	}
        return result;
    }
//
//    // Find by ID
//    public User findById(String id) {
//        return jdbc.queryForObject("SELECT * FROM users WHERE id = ?", rowMapper, id);
//    }
}