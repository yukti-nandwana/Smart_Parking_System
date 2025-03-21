import java.sql.*;
import java.util.*;
import com.google.gson.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

@WebServlet("/getParkingSpots")
public class ParkingServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String location = request.getParameter("location");
        List<String> parkingSpots = new ArrayList<>();
        
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parking", "root", "password");
             PreparedStatement stmt = conn.prepareStatement("SELECT parking_spot FROM locations WHERE area_name = ?")) {
            stmt.setString(1, location);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                parkingSpots.add(rs.getString("parking_spot"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        response.setContentType("application/json");
        response.getWriter().write(new Gson().toJson(parkingSpots));
    }
}