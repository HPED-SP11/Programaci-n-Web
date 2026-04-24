document.addEventListener("DOMContentLoaded", () => {
    const btnCerrar = document.querySelector(".btn-cerrar");
    if (btnCerrar) {
        btnCerrar.addEventListener("click", () => {
            Swal.fire({
                title: "¡Adióoos!",
                icon: "success",
                color: "#fff",
                background: "#1a1a1a",
                confirmButtonText: "¡Nos vemos!",
                confirmButtonColor: "#f54927",
                draggable: true
            }).then(result => {
                window.location.href = "/index"
            });
        });
    }

    //SCRIPT PARA REGISTRAR A LOS ALUMNOS
    const btnRegistrar = document.getElementById("btnRegistrar");
    if (btnRegistrar) {
        btnRegistrar.addEventListener("click", (e) => {
            e.preventDefault();
            const name = document.getElementById("name");
            const dom = document.getElementById("dom");
            const coUdeg = document.getElementById("coUdeg");

            if (name.value.trim() !== "" && dom.value.trim() !== "" && coUdeg.value.trim() !== "") {
                if (coUdeg.value.length < 9 || coUdeg.value.length > 9) {
                    Swal.fire({
                        title: "Emmm...",
                        html: "El código de estudiante debe ser de únicamente 9 dígitos.<br>Revisalo e intentalo nuevamente.",
                        icon: "warning",
                        color: "#fff",
                        background: "#1a1a1a",
                        confirmButtonColor: "#f54927",
                        draggable: true
                    })
                } else {
                    Swal.fire({
                        title: "¡Hecho!",
                        html: "El estudiante se registró correctamente<br>Al cerrar esta ventana volverás al insert",
                        icon: "success",
                        color: "#fff",
                        background: "#1a1a1a",
                        confirmButtonColor: "#f54927",
                        draggable: true
                    }).then(result => {
                        document.querySelector('.crud-form').submit();
                    });
                }
            } else {
                Swal.fire({
                    title: "Ups...",
                    html: "Tienes que llenar el campo de nombre, domicilio y código de estudiante.<br>Revisalas e intenta nuevamente.",
                    icon: "warning",
                    color: "#fff",
                    background: "#1a1a1a",
                    confirmButtonColor: "#f54927",
                    draggable: true
                });
            }
        });
    }

    //SCRIPT PARA BUSCAR A LOS ALUMNOS"
    const btnBuscar = document.getElementById("btnBuscar");
    if (btnBuscar) {
        btnBuscar.addEventListener("click", (e) => {
            e.preventDefault();
            const coUdeg = document.getElementById("coUdeg");

            if (coUdeg.value.trim() !== "" && coUdeg.value.length === 9) {
                let  timerInterval;
                Swal.fire({
                    title: "¡Hecho!",
                    html: "Estamos buscando al estudiante en la base de datos.<br>Enseguida te redireccionaremos.",
                    timer: 2000,
                    timerProgressBar: true,
                    icon: "success",
                    color: "#fff",
                    background: "#1a1a1a",
                    draggable: false,
                    didOpen: () => {
                        Swal.showLoading();
                        const timer = Swal.getPopup().querySelector("b");
                        timerInterval = setInterval(() => {
                            timer.textContent = `${Swal.getTimerLeft()}`;
                        }, 100);
                    },
                    willClose: () => {
                        clearInterval(timerInterval);
                    }
                }).then(result => {
                    document.getElementById('formBuscador').submit();
                });
            } else {
                Swal.fire({
                    title: "Emmm...",
                    html: "El código de estudiante debe ser de 9 dígitos.<br>Revisalo e intentalo nuevamente.",
                    icon: "warning",
                    color: "#fff",
                    background: "#1a1a1a",
                    confirmButtonColor: "#f54927",
                    draggable: true
                })
            }
        });
    }

    //SCRIPT PARA MODIFICAR A LOS ALUMNOS
    const btnModificar = document.getElementById("btnModificar");
    if (btnModificar) {
        btnModificar.addEventListener("click", (e) => {
            e.preventDefault();

            if (name.value.trim() !== "" && dom.value.trim() !== "" && coUdeg.value.trim() !== "") {
                if (coUdeg.value.length < 9 || coUdeg.value.length > 9) {
                    Swal.fire({
                        title: "Emmm...",
                        html: "El código de estudiante debe ser de únicamente 9 dígitos.<br>Revisalo e intentalo nuevamente.",
                        icon: "warning",
                        color: "#fff",
                        background: "#1a1a1a",
                        confirmButtonColor: "#f54927",
                        draggable: true
                    })
                } else {
                    Swal.fire({
                        title: "¡Hecho!",
                        html: "Los datos del alumno se actualizaron correctamente.<br>Al cerrar esta ventana volverás al insert",
                        icon: "success",
                        color: "#fff",
                        background: "#1a1a1a",
                        confirmButtonColor: "#f54927",
                        draggable: true
                    }).then(result => {
                        document.getElementById('formEditar').submit();
                    });
                }
            } else {
                Swal.fire({
                    title: "Ups...",
                    html: "Tienes que llenar el campo de nombre y domicilio.<br>Revisalas e intenta nuevamente.",
                    icon: "warning",
                    color: "#fff",
                    background: "#1a1a1a",
                    confirmButtonColor: "#f54927",
                    draggable: true
                });
            }
        });
    }

    // SCRIPT PARA EL MODAL DE EDICIÓN EN LA LISTA ---
    const modal = document.getElementById("modal-nombre");

    document.addEventListener("click", (e) => {
        const btnEditar = e.target.closest(".boton-editar");
        if (btnEditar) {
            const fila = btnEditar.closest("tr");

            const codigo = fila.querySelector(".col-codigo").textContent.trim();
            const nombre = fila.querySelectorAll("td")[1].textContent.trim();
            const domicilio = fila.querySelectorAll("td")[2].textContent.trim();

            document.getElementById("codigo").value = codigo;
            document.getElementById("nombre").value = nombre;
            document.getElementById("domicilio").value = domicilio;

            modal.classList.add("active");
        }

        if (e.target.closest(".close-btn") || e.target === modal) {
            modal.classList.remove("active");
        }
    });

    const btnGuardarModal = document.getElementById("btn-save-nombre");
    if (btnGuardarModal) {
        btnGuardarModal.addEventListener("click", (e) => {
            e.preventDefault();
            const inputNombre = document.getElementById("nombre");
            const inputDom = document.getElementById("domicilio");

            if (inputNombre.value.trim() !== "" && inputDom.value.trim() !== "") {
                Swal.fire({
                    title: "¡Confirmado!",
                    text: "Se actualizarán los datos del alumno.",
                    icon: "success",
                    color: "#fff",
                    background: "#1a1a1a",
                    confirmButtonColor: "#f54927",
                    draggable: true
                }).then((result) => {
                    document.getElementById("form-nombre").submit();
                });
            } else {
                Swal.fire({
                    title: "Campos vacíos",
                    text: "Por favor, completa el nombre y el domicilio.",
                    icon: "warning",
                    color: "#fff",
                    background: "#1a1a1a",
                    confirmButtonColor: "#f54927"
                });
            }
        });
    }

});