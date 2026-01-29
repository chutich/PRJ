/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import utils.DbUtils;

/**
 *
 * @author Thua
 */
public class UserDAO {

    ArrayList<UserDTO> Users = new ArrayList<UserDTO>();

    public UserDAO() {
    }

    public UserDTO SearchByID(String UserName) {
        try {
            Connection conn = DbUtils.getConnection();
            String sql = "SELECT [userID]\n"
                    + "      ,[fullName]\n"
                    + "      ,[password]\n"
                    + "      ,[roleID]\n"
                    + "      ,[status]\n"
                    + "  FROM [PRJ30x_DB1].[dbo].[tblUsers] "
                    + " WHERE userID =?";
            PreparedStatement stament = conn.prepareStatement(sql);
            stament.setString(1, UserName);
            ResultSet rs = stament.executeQuery();

            UserDTO u = null;
            while (rs.next()) {
                String uID = rs.getString("userID");
                String name = rs.getString("fullName");
                String pass = rs.getString("password");
                String roleID = rs.getString("roleID");
                boolean status = rs.getBoolean("status");
                u = new UserDTO(uID, name, pass, roleID, status);
            }
            System.out.println(u);
            return u;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return null;
        }
    }

    public UserDTO login(String username, String password) {
        UserDTO u = SearchByID(username);
        if (u != null && u.getPassword().equals(password)) {
            return u;
        }
        return null;
    }
}
