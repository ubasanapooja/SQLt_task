import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InsertEmployeeData {
    // JDBC URL, username, and password of your database
    static final String DB_URL = "jdbc:mysql://localhost:3306/guvi"; // Replace with your database URL
    static final String USER = "root"; // Replace with your database username
    static final String PASS = "alpha@1234"; // Replace with your database password

    // SQL INSERT statement for employees
    private static final String INSERT_EMPLOYEE_SQL = "INSERT INTO employees" +
            " (empcode, empname, empage, esalary) VALUES (?, ?, ?, ?);";

    public static void main(String[] args) {
        // Data to insert
        Object[][] employeeData = {
                {101, "Jenny", 25, 10000},
                {102, "Jacky", 30, 20000},
                {103, "Joe", 20, 40000},
                {104, "John", 40, 80000},
                {105, "Shameer", 25, 90000}
        };

        // Establishing connection and inserting data
        try (Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPLOYEE_SQL)) {

            connection.setAutoCommit(false); // For transaction control

            // Loop through employee data and insert
            for (Object[] emp : employeeData) {
                preparedStatement.setInt(1, (Integer) emp[0]);  // empcode
                preparedStatement.setString(2, (String) emp[1]); // empname
                preparedStatement.setInt(3, (Integer) emp[2]);   // empage
                preparedStatement.setInt(4, (Integer) emp[3]);   // esalary

                preparedStatement.addBatch(); // Batch the queries
            }

            preparedStatement.executeBatch(); // Execute the batch of inserts
            connection.commit(); // Commit the transaction

            System.out.println("Data inserted successfully!");

        } catch (SQLException e) {
            // Handle SQL exceptions
            e.printStackTrace();
        }
    }
}
