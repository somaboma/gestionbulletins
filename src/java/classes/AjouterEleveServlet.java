/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package classes;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/AjouterEleveServlet")
public class AjouterEleveServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1 formulaire
        String matricule = request.getParameter("matricule");
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String dateNaissance = request.getParameter("dateNaissance");
        String classe = request.getParameter("classe");

        // 2 connexion wamp
        String url = "jdbc:mysql://localhost:3306/gestion_bulletins";
        String user = "root";  // Remplace avec ton user MySQL
        String password = "";   // Remplace avec ton mot de passe MySQL

        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Chargement du driver
            Connection conn = DriverManager.getConnection(url, user, password);

            // 3 insertion
            String sql = "INSERT INTO eleves (matricule, nom, prenom, date_naissance, classe) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, matricule);
            stmt.setString(2, nom);
            stmt.setString(3, prenom);
            stmt.setString(4, dateNaissance);
            stmt.setString(5, classe);

            int rowsInserted = stmt.executeUpdate();
            stmt.close();
            conn.close();

            // 4 redirection
            if (rowsInserted > 0) {
                response.sendRedirect("index.jsp?message=success");
            } else {
                response.sendRedirect("ajouterEleve.jsp?message=error");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("ajouterEleve.jsp?message=error");
        }
    }
}
