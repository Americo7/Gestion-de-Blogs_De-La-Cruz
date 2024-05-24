<%@page import="com.emergentes.modelo.Post"%>
<%
    Post post = (Post)request.getAttribute("post");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nueva Entrada - Blog de Tecnología</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(120deg, #2980b9, #6dd5fa, #ffffff);
            margin: 0;
            padding: 0;
            color: #333;
        }
        .container {
            width: 90%;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }
        h1 {
            text-align: center;
            color: #2980b9;
            margin-bottom: 30px;
            font-size: 2.5em;
            font-weight: bold;
        }
        form {
            margin-top: 20px;
        }
        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #34495e;
        }
        input[type="text"], input[type="date"], textarea {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1em;
        }
        textarea {
            height: 150px;
        }
        input[type="submit"] {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px;
            border-radius: 5px;
            text-align: center;
            cursor: pointer;
            font-size: 1em;
            background-color: #2980b9;
            color: #fff;
            border: none;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #1c5980;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Nueva Entrada</h1>
        <form action="PostController" method="post">
            <input type="hidden" name="id" value="${post.id}" />
            
            <label for="fecha">Fecha</label>
            <input type="date" id="fecha" name="fecha" value="${post.fecha}" />
            
            <label for="titulo">Título</label>
            <input type="text" id="titulo" name="titulo" value="${post.titulo}" />
            
            <label for="contenido">Contenido</label>
            <textarea id="contenido" name="contenido">${post.contenido}</textarea>
            
            <input type="submit" value="Guardar" />
        </form>
    </div>
</body>
</html>
