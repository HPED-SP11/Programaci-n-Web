<%-- 
    Document   : LogIn
    Created on : 15 feb 2026, 8:04:28 p.m.
    Author     : hpede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de Sesión</title>
        <style>
            /* 1. Estilos Generales */
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f0f2f5; /* Color de fondo suave */
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh; /* Ocupa toda la altura de la pantalla */
                margin: 0;
            }

            /* 2. La Tarjeta (Contenedor) */
            .login-card {
                background-color: white;
                padding: 2rem;
                border-radius: 10px;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); /* Sombrita elegante */
                width: 100%;
                max-width: 400px;
                text-align: center;
            }

            .login-card h2 {
                color: #333;
                margin-bottom: 1.5rem;
            }

            /* 3. Los Campos (Inputs) */
            .form-group {
                margin-bottom: 15px;
                text-align: left;
            }

            .form-group label {
                display: block;
                margin-bottom: 5px;
                color: #666;
                font-weight: 600;
            }

            .form-group input {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box; /* Para que el padding no rompa el ancho */
                transition: border 0.3s;
            }

            .form-group input:focus {
                border-color: #007bff; /* Color azul al escribir */
                outline: none;
            }

            /* 4. Los Botones */
            .btn-container {
                display: flex;
                gap: 10px;
                margin-top: 20px;
            }

            .btn {
                flex: 1;
                padding: 10px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-weight: bold;
                transition: background 0.3s;
            }

            .btn-ingresar {
                background-color: #007bff; /* Azul */
                color: white;
            }

            .btn-ingresar:hover {
                background-color: #0056b3;
            }

            .btn-borrar {
                background-color: #dc3545; /* Rojo */
                color: white;
            }

            .btn-borrar:hover {
                background-color: #a71d2a;
            }
        </style>
    </head>
    <body>
        <div class="login-card">
            <h2>Bienvenido</h2>
            <form action="Logic.jsp">
                <div class="form-group">
                    <label for="user">Usuario:</label>
                    <input type="text" name="user" id="user" placeholder="Ingresa tu usuario" required>
                </div>
                <div class="form-group">
                    <label for="psswd">Contraseña:</label>
                    <input type="password" name="psswd" id="psswd" placeholder="*****" required>
                </div>
                <div class="btn-container">
                    <input type="submit" value="Ingresar" class="btn btn-ingresar">
                    <input type="reset" value="Borrar" class="btn btn-borrar">
                </div>
            </form>
        </div>
    </body>
</html>
