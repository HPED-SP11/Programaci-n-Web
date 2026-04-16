<%-- 
    Document   : resultado_select
    Created on : Mar 25, 2026, 8:38:27 PM
    Author     : hpede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bases de Datos con MVC</title>
        <link rel="stylesheet" href="styles.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css"/><!--Bootstrap-->
    </head>
    <body>
        <header>
            <div class="header-left"><p>&ltHPED&gt</p></div>
            <div class="header-center"><h2>MVC para INSERT en DB MySQL</h2></div>
            <div class="header-right"><p>Marzo 9, 2026</p></div>
        </header>
        <div class="form-select">
            <h3>Resultado de la operación:</h3><br>
            
            <!--<p style="font-size: 1.2em; font-weight: bold;">${resultado}</p>-->
            ${resultado}
            
            <br><br>
            <a href="select.jsp" class="btn-volver">
                Volver al formulario
            </a>
        </div>
        <div class="modal-overlay" id="modal-nombre">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Actualizar Nombre</h3>
                    <span class="close-btn">
                        <i class="bi bi-x-lg"></i>
                    </span>
                </div>
                <form id="form-nombre" action="ConfirmarDatosAlumnoDAO" method="POST">
                    <label>Actualizar Nombre:</label>
                    <input type="text" id="input-name" class="input-name"/>
                    <p id="error-nombre" class="error-msg"></p>
                    <button type="button" id="btn-save-nombre" class="btn_Guardar">
                        Guardar Cambios
                    </button>
                </form>
            </div>
        </div>
        <div class="modal-overlay" id="modal-domicilio">
            <div class="modal-content">
                <div class="modal-header">
                    <h3>Actualizar Domicilio</h3>
                    <span class="close-btn">
                        <i class="bi bi-x-lg"></i>
                    </span>
                </div>
                <form id="form-domicilio" action="ConfirmarDatosAlumnoDAO" method="POST">
                    <label>Actualizar Domicilio:</label>
                    <input type="text" id="input-domicilio" class="input-domicilio"/>
                    <p id="error-domicilio" class="error-msg"></p>
                    <button type="button" id="btn-save-domicilio" class="btn_Guardar">
                        Guardar Cambios
                    </button>
                </form>
            </div>
        </div>
        <footer>
            <ul>
                <li>Hernández Pérez, Edgar Daniel - 221770108 - Universidad de Guadalajara</li>
                <li>
                    <a href="https://github.com/HPED-SP11" target="_blank">
                        <i class="bi bi-github"></i>
                    </a>
                    <a href="https://gitlab.com/hped" target="_blank">
                        <i class="bi bi-gitlab"></i>
                    </a>
                    <a href="https://www.linkedin.com/in/edgar-perez-hped" target="_blank">
                        <i class="bi bi-linkedin"></i>
                    </a>
                    <a href="https://bsky.app/profile/hped.bsky.social" target="_blank">
                        <i class="bi bi-bluesky"></i>
                    </a>
                </li>
            </ul>
        </footer>
        <script src="modales.js"></script>
    </body>
</html>
