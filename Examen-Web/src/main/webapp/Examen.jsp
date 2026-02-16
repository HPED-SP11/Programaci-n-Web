<%-- 
    Document   : Examen
    Created on : 15 feb 2026, 8:06:35 p.m.
    Author     : hpede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Google+Sans:ital,opsz,wght@0,17..18,400..700;1,17..18,400..700&display=swap" rel="stylesheet">
        <style>body {font-family: 'Google Sans', sans-serif; font-optical-sizing: auto; margin: 1.2rem;}</style>
        <script>
            function validarFormulario() {
                // Revisar todos los grupos de checkbox que requieren 2 respuestas
                const grupos = ["P2", "P3"];

                for (let nombre of grupos) {
                    let marcados = document.querySelectorAll(`input[name="${nombre}"]:checked`).length;
                    if (marcados !== 2) {
                        alert(`En la pregunta ${nombre.replace('P', '')} debes seleccionar exactamente 2 opciones.`);
                        return false; // Detiene el envío del formulario
                    }
                }
                return true; // Permite el envío
            }
        </script>
    </head>
    <body>
        <h1>Bienvenido/a al examen!</h1>
        
        <form action="LogicForm.jsp" onsubmit=" return valiudarFormulario()"> <!<!-- https://www.cisacad.net/ccna-1-v7-modulos-1-3-examen-de-conectividad-de-red-basica-y-comunicaciones-respuestas/ -->
            <p>1. Un empleado de una sucursal está realizando una cotización para un cliente. Para ello, necesita acceder a la información confidencial sobre precios que se encuentra en los servidores internos de la oficina central. ¿A qué tipo de red debería acceder el empleado?</p>
            <input type="radio" name="P1" value="internet">Internet<BR>
            <input type="radio" name="P1" value="intranet" class="Correcto">Una intranet<BR> <!--Correcto-->
            <input type="radio" name="P1" value="lan">Una red de área local<BR>
            <input type="radio" name="P1" value="extranet">Una extranet<BR>
            
            <p>2. ¿Cuáles son los dos criterios que se utilizan para seleccionar un medio de red entre varios medios de red? (<B>Elija dos opciones</B>).</p>
            <input type="checkbox" name="P2" value="distancia">La distancia que el medio seleccionado puede transportar una señal correctamente<BR><!--1 de 2 (o 2 de 2)-->
            <input type="checkbox" name="P2" value="cantidad">La cantidad de dispositivos intermedios instalados en la red<BR>
            <input type="checkbox" name="P2" value="costo">El costo de los dispositivos finales que se utilizan en la red<BR>
            <input type="checkbox" name="P2" value="entorno">El entorno en el que se debe instalar el medio seleccionado<BR> <!--1 de 2 (o 2 de 2)-->
            <input type="checkbox" name="P2" value="tipos">Los tipos de datos que se deben priorizar<BR>
            
            <p>3. Un usuario está implementando una política de seguridad en una red de oficina pequeña. ¿Cuáles son las dos acciones que proporcionarían los requisitos mínimos de seguridad para esta red? (<B>Elija dos opciones</B>).</p>
            <input type="checkbox" name="P3" value="ids">La implementación de un sistema de detección de intrusiones<BR>
            <input type="checkbox" name="P3" value="wireless">La instalación de una red inalámbrica<BR>
            <input type="checkbox" name="P3" value="firewall">La implementación de un firewall<BR> <!--1 de 2 (o 2 de 2)-->
            <input type="checkbox" name="P3" value="prevencion">El agregado de un dispositivo de prevención de intrusiones exclusivo<BR>
            <input type="checkbox" name="P3" value="antivirus">La instalación de un software antivirus<BR> <!--1 de 2 (o 2 de 2)-->
            
            <p>4. ¿Cuál de estas interfaces permite la administración remota de un switch de capa 2?</p>
            <input type="radio" name="P4" value="ethernet">La primera interfaz de puerto Ethernet<BR>
            <input type="radio" name="P4" value="consola">La interfaz de puerto de consola<BR>
            <input type="radio" name="P4" value="svi">La interfaz virtual del switch<BR> <!--Correcto-->
            <input type="radio" name="P4" value="aux">La interfaz auxiliar<BR>
            
            <p>5. ¿Qué función tiene la tecla de tabulación al introducir un comando en IOS?</p>
            <input type="radio" name="P5" value="newline">Desplaza el cursor hacia el principio de la línea siguiente.<BR>
            <input type="radio" name="P5" value="completar">Completa el resto de una palabra escrita parcialmente en un comando.<BR> <!--Correcto-->
            <input type="radio" name="P5" value ="anular">Anula el comando actual y vuelve al modo de configuración<BR>
            <input type="radio" name="P5" value="exec">Sale del modo de configuración y vuelve al modo EXEC del usuario.<BR>
            
            <p>6. Consulte la ilustración.</p>
            <img src="https://res.cloudinary.com/de0lu12az/image/upload/v1771210590/cisco_yby4ei.png" alt="CCNA 1 v7 Módulos 1 – 3 p6"/>
            <p>Un administrador de redes está configurando el control de acceso al switch SW1. Si el administrador utiliza una conexión de consola para conectarse al switch, ¿cuál de las siguientes contraseñas se necesita para acceder al modo EXEC del usuario?</p>
            <input type="radio" name="P6" value="letmein">letmein<BR>
            <input type="radio" name="P6" value="secretin">secretin<BR>
            <input type="radio" name="P6" value ="lineconin">lineconin<BR> <!--Correcto-->
            <input type="radio" name="P6" value="linevtyin">linevtyin<BR>
            
            <p>7. Un técnico configura un switch con los siguientes comandos: <br>SwitchA(config)# interface vlan 1 SwitchA(config-if)# ip address 192.168.1.1 255.255.255.0 SwitchA(config-if)#<br>no shutdown<br><b>¿Qué configura el técnico?</b></p>
            <input type="radio" name="P7" value="fisico">Acceso físico al puerto de switch.<BR>
            <input type="radio" name="P7" value="cifrado">Cifrado de contraseñas.<BR>
            <input type="radio" name="P7" value ="telnet">Acceso por Telnet<BR>
            <input type="radio" name="P7" value="svi">Una interfaz virtual de switch.<BR>  <!--Correcto-->
            
            <p>8. ¿Cuáles de las siguientes son dos características de la RAM en un dispositivo Cisco? (<B>Elija dos opciones</B>).</p>
            <input type="checkbox" name="P8" value="contram">El contenido de la RAM se pierde al apagar y volver a encender el dispositivo.<BR> <!--Correcto-->
            <input type="checkbox" name="P8" value="iosyconfig">La RAM puede almacenar varias versiones de IOS y de archivos de configuración<BR>
            <input type="checkbox" name="P8" value ="novolatil">La RAM proporciona almacenamiento no volátil.<BR>
            <input type="checkbox" name="P8" value="switchcisco">La RAM es un componente de los switches Cisco, pero no de los routers Cisco.<BR>
            <input type="checkbox" name="P8" value="configram">La configuración que está activamente en ejecución en el dispositivo se almacena en la RAM.<BR> <!--Correcto-->
            
            <p>9. ¿Cuáles son los dos nombres de host que cumplen las pautas de convenciones de nomenclatura en dispositivos con Cisco IOS? (<B>Elija dos opciones</B>).</p>
            <input type="checkbox" name="P9" value="floor">Floor(15).<BR>
            <input type="checkbox" name="P9" value="SwBranch799">SwBranch799.<BR> <!--Correcto-->
            <input type="checkbox" name="P9" value ="Branch2!">Branch2!<BR>
            <input type="checkbox" name="P9" value="HO">HO Floor 17.<BR>
            <input type="checkbox" name="P9" value="RM-3-Switch-2A4">RM-3-Switch-2A4.<BR> <!--Correcto-->
            
            <p>10. ¿Cuáles de las siguientes son tres características de una SVI? (<B>Elija tres opciones</B>).</p>
            <input type="checkbox" name="P10" value="remoto">Proporciona una forma de administrar un switch de manera remota.<BR> <!--Correcto-->
            <input type="checkbox" name="P10" value="especial">Es una interfaz especial que permite la conectividad de diferentes tipos de medios.<BR>
            <input type="checkbox" name="P10" value ="nofisico">No está asociada a ninguna interfaz física en un switch.<BR> <!--Correcto-->
            <input type="checkbox" name="P10" value="vlan">Está asociada con la VLAN 1 de manera predeterminada.<BR> <!--Correcto-->
            <input type="checkbox" name="P10" value="requerido">Se requiere para permitir la conectividad de cualquier dispositivo en cualquier ubicación.<BR>
            <input type="checkbox" name="P10" value ="protocolo">Está diseñada como un protocolo de seguridad para proteger los puertos del switch.<BR>
            
            <input type="submit" value="Revisar" name="check">
        </form>
    </body>
</html>
