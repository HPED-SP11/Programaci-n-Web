<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factorial con MVC - Resultado</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;800&display=swap');
            
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                background-color: #c8c8d7;
                font-family: "Poppins", sans-serif;
                color: #222;
                display: flex;
                flex-direction: column;
                align-items: center;
                min-height: 100vh;
            }
            
            /* El mismo encabezado oscuro del index */
            .header {
                background-color: #3b3b3f;
                color: white;
                width: 100%;
                text-align: center;
                padding: 20px 0;
                box-shadow: 0 10px 14px rgba(0,0,0,0.6);
            }

            .header h2 {
                font-weight: 800;
                font-size: 28px;
                letter-spacing: 1px;
            }

            /* Contenedor tipo tarjeta para lucir el resultado */
            .resultado-card {
                background-color: #ffffff;
                padding: 40px;
                border-radius: 12px;
                box-shadow: 0 8px 16px rgba(0,0,0,0.1);
                margin-top: 50px;
                text-align: center;
                max-width: 600px;
                width: 90%;
            }

            .resultado-card p {
                font-size: 20px;
                margin-bottom: 30px;
            }

            /* Resaltamos los números */
            .resultado-card b {
                color: #3b3b3f;
                font-size: 24px;
            }

            /* Transformamos el enlace <a> en un botón visualmente */
            a.btn-volver {
                background-color: #3b3b3f;
                color: white;
                text-decoration: none;
                padding: 12px 24px;
                border-radius: 6px;
                font-weight: 600;
                font-size: 16px;
                transition: background-color 0.3s, transform 0.2s;
                display: inline-block;
            }

            a.btn-volver:hover {
                background-color: #5a5a60;
                transform: translateY(-2px); /* Pequeño efecto de levantamiento al pasar el mouse */
            }

            /* Footer fijo al fondo */
            footer {
                margin-top: auto;
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
            <h2>Resultados del Cálculo</h2>
        </div>
        
        <div class="resultado-card">
            <p>El factorial de <b>${numOrig}</b> es <br><br><b>${resultadoFactorial}</b></p>
            
            <a href="index.jsp" class="btn-volver">Calcular otro factorial</a>
        </div>
        
        <footer>Hernandez Perez, Edgar Daniel - 221770108 - ICCO26A</footer>
    </body>
</html>