<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Post"%>
<%
    List<Post> posts = (List<Post>)request.getAttribute("posts");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blog de Tecnología - AMERICO DE LA CRUZ</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: linear-gradient(135deg, #1abc9c, #16a085);
                margin: 0;
                padding: 0;
                color: #333;
            }
            .container {
                width: 90%;
                max-width: 1200px;
                margin: 50px auto;
                padding: 20px;
                background-color: #fff;
                box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
                overflow: hidden;
            }
            h1 {
                text-align: center;
                color: #2c3e50;
                margin-bottom: 30px;
                font-size: 2.8em;
                font-weight: bold;
            }
            a {
                text-decoration: none;
                color: #fff;
            }
            a:hover {
                text-decoration: underline;
            }
            .new-post {
                display: block;
                text-align: right;
                margin-bottom: 20px;
            }
            .btn {
                display: inline-block;
                padding: 10px 20px;
                margin: 4px 2px;
                border-radius: 5px;
                text-align: center;
                cursor: pointer;
                font-size: 1em;
                transition: background-color 0.3s ease, transform 0.3s ease;
            }
            .btn-primary {
                background-color: #3498db;
            }
            .btn-primary:hover {
                background-color: #2980b9;
                transform: scale(1.05);
            }
            .btn-warning {
                background-color: #f39c12;
            }
            .btn-warning:hover {
                background-color: #e67e22;
                transform: scale(1.05);
            }
            .btn-danger {
                background-color: #e74c3c;
            }
            .btn-danger:hover {
                background-color: #c0392b;
                transform: scale(1.05);
            }
            .post-card {
                background-color: #ecf0f1;
                border: 1px solid #bdc3c7;
                border-radius: 10px;
                padding: 20px;
                margin-bottom: 20px;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
                transition: transform 0.3s ease;
            }
            .post-card:hover {
                transform: scale(1.02);
            }
            .post-title {
                font-size: 2em;
                font-weight: bold;
                color: #2c3e50;
                margin-bottom: 10px;
            }
            .post-meta {
                font-size: 0.9em;
                color: #7f8c8d;
                margin-bottom: 10px;
            }
            .post-content {
                font-size: 1.1em;
                line-height: 1.6;
                color: #34495e;
                margin-bottom: 10px;
            }
            .actions {
                margin-top: 10px;
                display: flex;
                gap: 10px;
            }
            @media (max-width: 768px) {
                .post-card {
                    padding: 15px;
                }
                .post-title {
                    font-size: 1.5em;
                }
                .post-content {
                    font-size: 1em;
                }
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Blog de Tecnología - AMERICO DE LA CRUZ</h1>
            <p class="new-post"><a class="btn btn-primary" href="PostController?action=add">Nuevo</a></p>
            <c:forEach var="item" items="${posts}">
                <div class="post-card">
                    <div class="post-title">${item.titulo}</div>
                    <div class="post-meta">Publicado el ${item.fecha}</div>
                    <div class="post-content">${item.contenido}</div>
                    <div class="actions">
                        <a class="btn btn-warning" href="PostController?action=edit&id=${item.id}">Editar</a>
                        <a class="btn btn-danger" href="PostController?action=delete&id=${item.id}">Eliminar</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </body>
</html>
