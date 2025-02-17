<%-- 
    Document   : ajouterEleve
    Created on : 17 févr. 2025, 16:51:39
    Author     : BOMA
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ajouter un Élève</title>
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
                <li class="nav-item"><a class="nav-link active" href="ajouterEleve.jsp">Ajouter Élève</a></li>
                <li class="nav-item"><a class="nav-link" href="ajouterNote.jsp">Ajouter Note</a></li>
                <li class="nav-item"><a class="nav-link" href="consulterBulletin.jsp">Consulter Bulletins</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Formulaire d'ajout -->
<div class="container mt-5">
    <h2 class="text-center">Ajouter un nouvel élève</h2>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form action="AjouterEleveServlet" method="post" class="p-4 border rounded bg-light shadow">
                <div class="mb-3">
                    <label class="form-label">Matricule :</label>
                    <input type="text" name="matricule" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Nom :</label>
                    <input type="text" name="nom" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Prénom :</label>
                    <input type="text" name="prenom" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Date de Naissance :</label>
                    <input type="date" name="dateNaissance" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Classe :</label>
                    <select name="classe" class="form-select" required>
                        <option value="">-- Sélectionnez une classe --</option>
                        <option value="6ème">6ème</option>
                        <option value="5ème">5ème</option>
                        <option value="4ème">4ème</option>
                        <option value="3ème">3ème</option>
                        <option value="2nde">2nde</option>
                        <option value="1ère">1ère</option>
                        <option value="Terminale">Terminale</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary w-100">Enregistrer</button>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

