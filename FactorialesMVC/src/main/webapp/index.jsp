<%-- 
    Document   : index
    Created on : Feb 26, 2026, 3:16:50 PM
    Author     : hpede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factorial con MVC</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;800&display=swap');

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box; /* Evita que el padding haga más grandes las cajas */
            }

            body {
                background-color: #c8c8d7;
                font-family: "Poppins", sans-serif;
                color: #222;
                display: flex;
                flex-direction: column; /* Apila los elementos de arriba hacia abajo */
                align-items: center;    /* Centra todo horizontalmente */
                min-height: 100vh;      /* Asegura que el body mida al menos toda la pantalla */
            }

            /* El contenedor del encabezado oscuro */
            .header {
                background-color: #3b3b3f;
                color: white;
                width: 100%;            /* Que ocupe todo el ancho disponible */
                text-align: center;
                padding: 20px 0;
                box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            }

            .header h1 {
                font-weight: 800;
                font-size: 28px;
                letter-spacing: 1px;
            }

            /* Estilo del texto descriptivo */
            p {
                margin-top: 40px;
                font-size: 16px;
                font-weight: 500;
            }

            /* Le damos estilo de "tarjeta" al formulario */
            form {
                background-color: #ffffff;
                padding: 30px 40px;
                border-radius: 12px;
                box-shadow: 0 8px 16px rgba(0,0,0,0.1);
                margin-top: 20px;
            }

            /* Separación interna de la tabla */
            td, th {
                padding: 10px;
            }

            th {
                text-align: right;
            }

            /* Estilo moderno para el input numérico */
            input[type="number"] {
                padding: 10px;
                border: 2px solid #ccc;
                border-radius: 6px;
                font-family: "Poppins", sans-serif;
                font-size: 16px;
                outline: none;
                transition: border-color 0.3s;
            }

            input[type="number"]:focus {
                border-color: #3b3b3f; /* Cambia de color al seleccionarlo */
            }

            /* Botón con estilo */
            input[type="submit"] {
                background-color: #3b3b3f;
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 6px;
                font-family: "Poppins", sans-serif;
                font-weight: 600;
                font-size: 16px;
                cursor: pointer;
                width: 100%; /* Que el botón ocupe todo el ancho de su celda */
                transition: background-color 0.3s;
            }

            input[type="submit"]:hover {
                background-color: #5a5a60; /* Efecto hover al pasar el mouse */
            }

            /* Footer pegado al fondo */
            footer {
                margin-top: auto; /* Truco de flexbox para empujar el footer hasta abajo */
                padding: 20px;
                font-size: 13px;
                font-weight: 600;
                color: #555;
                text-align: center;
                width: 100%;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <header><h1>Factoriales con números enteros.</h1></header>
        </div>
        <p>Por favor, introduce un número entero que <b>sea positivo</b>.</p>
        
        <form action="LogicController" method="POST">
            <table border="0">
                <tr>
                    <th>Número: </th>
                    <td><input type="number" id="numero" name="numero" min="0" required></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Calcular"></td>
                </tr>
            </table>
        </form>
        
        <footer><br><br>Hernandez Perez, Edgar Daniel - 221770108 - ICCO26A</footer>
    </body>
</html>
