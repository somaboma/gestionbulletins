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
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


@WebServlet("/ListeElevesServlet")
public class ListeElevesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 1️⃣ Connexion à la base de données
        String url = "jdbc:mysql://localhost:3306/gestion_bulletins";
        String user = "root";  // Remplace avec ton user MySQL
        String password = "";   // Remplace avec ton mot de passe MySQL

        List<String[]> elevesList = new ArrayList<>();
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);

            // 2️⃣ Requête SQL pour récupérer les élèves
            String sql = "SELECT matricule, nom, prenom, date_naissance, classe FROM eleves";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            // 3️⃣ Traitement des résultats
            while (rs.next()) {
                String matricule = rs.getString("matricule");
                String nom = rs.getString("nom");
                String prenom = rs.getString("prenom");
                String dateNaissance = rs.getString("date_naissance");
                String classe = rs.getString("classe");

                // Ajouter les élèves à la liste
                elevesList.add(new String[]{matricule, nom, prenom, dateNaissance, classe});
            }

            rs.close();
            stmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        //  4️⃣ Passage des données à la JSP
        request.setAttribute("elevesList", elevesList);
        request.getRequestDispatcher("listeEleves.jsp").forward(request, response);
    }
}