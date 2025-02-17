<%-- 
    Document   : listeEleves
    Created on : 17 févr. 2025, 17:45:26
    Author     : BOMA
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Liste des Élèves</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<!-- Menu -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">Gestion des Bulletins</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="ajouterEleve.jsp">Ajouter Élève</a></li>
                <li class="nav-item"><a class="nav-link" href="ajouterNote.jsp">Ajouter Note</a></li>
                <li class="nav-item"><a class="nav-link" href="consulterBulletin.jsp">Consulter Bulletins</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Liste des élèves -->
<div class="container mt-5">
    <h2 class="text-center">Liste des Élèves</h2>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Matricule</th>
                <th>Nom</th>
                <th>Prénom</th>
                <th>Date de Naissance</th>
                <th>Classe</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<String[]> elevesList = (List<String[]>) request.getAttribute("elevesList");
                for (String[] eleve : elevesList) {
            %>
            <tr>
                <td><%= eleve[0] %></td>
                <td><%= eleve[1] %></td>
                <td><%= eleve[2] %></td>
                <td><%= eleve[3] %></td>
                <td><%= eleve[4] %></td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
