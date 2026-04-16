/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


document.addEventListener("click", (e) => {
    // Botones Abrir Modal
    /*const btnEditarNombre = document.getElementById("editName");
    const btnEditarDomicilio = document.getElementById("editDom");*/

    // Referencias a los contenedores de ventanas modales
    const ventanaNombre = document.getElementById("modal-nombre");
    const ventanaDom = document.getElementById("modal-domicilio");
    
    // Si el clic fue en el botón de editar nombre
    if (e.target.closest("#editName")) {
        const nombreActual = document.getElementById("celdaNombre").firstChild.textContent.trim();
        document.getElementById("input-name").value = nombreActual;
        ventanaNombre.style.display = "flex";
    }
    
    // Si el clic fue en el botón de editar domicilio
    if (e.target.closest("#editDom")) {
        const domActual = document.getElementById("celdaDomicilio").firstChild.textContent.trim();
        document.getElementById("input-domicilio").value = domActual;
        ventanaDom.style.display = "flex";
    }
    
    // Si clic en la X de cerrar o fuera del modal
    if (e.target.closest(".close-btn") || e.target === ventanaNombre || e.target === ventanaDom) {
        if (ventanaNombre) ventanaNombre.style.display = "none";
        if (ventanaDom) ventanaDom.style.display = "none";
    }
    
    // En esta parte se enviarán los datos con un FETCH
    
    if (e.target.id === "btn-save-nombre" || e.target.id === "btn-save-domicilio") {
        const esNombre = e.target.id === "btn-save-nombre";
        const nuevoValor = esNombre ? document.getElementById("input-name").value : document.getElementById("input-domicilio").value;
        const codigo = document.getElementById("celdaCodigo").textContent;

        // Parámetros para el Servlet
        const params = new URLSearchParams();
        params.append("codigo", codigo);
        params.append(esNombre ? "nombre" : "domicilio", nuevoValor);
        params.append("accion", "updateParcial");

        fetch("ConfirmarDatosAlumnoDAO", {
            method: "POST",
            body: params
        })
        .then(response => {
            if (response.ok) {
                // Actualización visual en la tabla automaticamente
                if (esNombre) {
                    document.getElementById("celdaNombre").firstChild.textContent = nuevoValor + " ";
                    ventanaNombre.style.display = "none";
                } else {
                    document.getElementById("celdaDomicilio").firstChild.textContent = nuevoValor + " ";
                    ventanaDom.style.display = "none";
                }
                console.log("Base de datos actualizada!");
            }
        })
        .catch(error => console.error("Error:", error));
    }
    
});