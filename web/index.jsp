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
    <title>Accueil - Gestion des Bulletins</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('https://source.unsplash.com/1600x900/?school,classroom') no-repeat center center;
            background-size: cover;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .overlay {
            background: rgba(0, 0, 0, 0.6);
            color: white;
            padding: 50px 20px;
            border-radius: 10px;
        }
        .container-custom {
            flex-grow: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
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

<!-- Contenu Principal -->
<div class="container container-custom">
    <div class="text-center overlay">
        <h1 class="display-3 fw-bold">BIENVENUE AU LYCÉE DÉPARTEMENTAL DE KOKOLOGO</h1>
        <p class="lead">Une application web moderne pour la gestion des élèves et des bulletins scolaires.</p>

        <div class="row mt-4">
            <div class="col-md-4">
                <a href="ajouterEleve.jsp" class="btn btn-primary btn-lg w-100">Ajouter un Élève</a>
            </div>
            <div class="col-md-4">
                <a href="ajouterNote.jsp" class="btn btn-warning btn-lg w-100">Ajouter une Note</a>
            </div>
            <div class="col-md-4">
                <a href="consulterBulletin.jsp" class="btn btn-success btn-lg w-100">Consulter Bulletins</a>
            </div>
             <div class="col-md-4">
                <a href="listeEleves.jsp" class="btn btn-success btn-lg w-100">Consulter la liste des Eleves</a>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
