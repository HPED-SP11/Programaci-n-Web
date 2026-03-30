document.addEventListener('DOMContentLoaded', () => { //PARA LAS ALERTAS DEL INDEX

    document.getElementById("update_opt").addEventListener('click', (e) => { // para el UPDATE
        e.preventDefault(); // Evita que el enlace intente navegar
        Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Aún no adjunto esta función",
        });
    });
    document.getElementById("delete_opt").addEventListener('click', (e) => { // para el DELETE
        e.preventDefault(); // Evita que el enlace intente navegar
        Swal.fire({
            icon: "error",
            title: "Oops...",
            text: "Aún no adjunto esta función",
        });
    });
});

document.addEventListener('DOMContentLoaded', () => { // ALERTA PARA 'VOLVER AL MENU' EN CUALQUIER FORMULARIO
    const btnReturn = document.getElementById('backMenu');
    if (btnReturn) {
        btnReturn.addEventListener('click', (e) => {
            e.preventDefault();

            Swal.fire({
                title: "Volviendo al menú de inicio...",
                icon: "success",
                timer: 1000,
                timerProgressBar: true,
                showConfirmButton: false,
                didOpen: () => {
                    Swal.showLoading();
                }
            }).then(() => {
                window.location.href = btnReturn.href;
            });
        });
    }
});
document.addEventListener('DOMContentLoaded', () => { // ALERTA PARA REDIRECCIÓN A CUALQUIER FORMULARIO
    const btnRedirect1 = document.getElementById('insert_opt');
    const btnRedirect2 = document.getElementById('select_opt');
    const btnRedirect3 = document.getElementById('update_opt');
    const btnRedirect4 = document.getElementById('delete_opt');

    if (btnRedirect1 || btnRedirect2 || btnRedirect3 || btnRedirect4) {
        btnRedirect1.addEventListener('click', (e) => {
            e.preventDefault();
            Swal.fire({
                title: "Yendo hacia el insert...",
                icon: "success",
                timer: 1000,
                timerProgressBar: true,
                showConfirmButton: false,
                didOpen: () => {
                    Swal.showLoading();
                }
            }).then(() => {
                window.location.href = btnRedirect1.href;
            });
        });
        btnRedirect2.addEventListener('click', (e) => {
            e.preventDefault();
            Swal.fire({
                title: "Yendo hacia el select...",
                icon: "success",
                timer: 1000,
                timerProgressBar: true,
                showConfirmButton: false,
                didOpen: () => {
                    Swal.showLoading();
                }
            }).then(() => {
                window.location.href = btnRedirect2.href;
            });
        });
        /*btnRedirect3.addEventListener('click', (e) => {
            e.preventDefault();
            Swal.fire({
                title: "Yendo hacia el update...",
                icon: "success",
                timer: 1000,
                timerProgressBar: true,
                showConfirmButton: false,
                didOpen: () => {
                    Swal.showLoading();
                }
            }).then(() => {
                window.location.href = btnRedirect3.href;
            });
        });
        btnRedirect4.addEventListener('click', (e) => {
            e.preventDefault();
            Swal.fire({
                title: "Yendo hacia el delete...",
                icon: "success",
                timer: 1000,
                timerProgressBar: true,
                showConfirmButton: false,
                didOpen: () => {
                    Swal.showLoading();
                }
            }).then(() => {
                window.location.href = btnRedirect4.href;
            });
        });*/
    }
});

document.addEventListener('DOMContentLoaded', () => { //PARA LAS ALERTAS DEL INSERT
    const btnRegistrar = document.getElementById("registrarEstudiante");
    const btnBuscar = document.getElementById("buscarEstudiante");

    const codigStudnt = document.getElementById("coudeg");
    const nameStudnt = document.getElementById("nameStu");
    const domiStudnt = document.getElementById("domStu");

    if (btnRegistrar) {
        btnRegistrar.addEventListener('click', (e) => {
            if (codigStudnt.value.trim() === "" || nameStudnt.value.trim() === "" || domiStudnt.value.trim() === "") {
                e.preventDefault();
                Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    html: "Te hace falta llenar algunos campos.<br>Revisa el código, nombre o domicilio."
                });
            }
            else {
                e.preventDefault();
                Swal.fire({
                    title: "¡Datos registrados correctamente!",
                    text: "Guardando información en la base de datos...",
                    icon: "success",
                    timer: 2000,
                    timerProgressBar: true,
                    didOpen: () => {
                        Swal.showLoading();
                    }
                }).then((result) => {
                    const form = e.target.closest('form');
                    if (form) {
                        form.submit();
                    }
                });
            }
        });
    }
    else if(btnBuscar) {
        btnBuscar.addEventListener('click', (e) => {
            if (codigStudnt.value.trim() === "") {
                e.preventDefault();
                Swal.fire({
                    icon: "error",
                    title: "Eemmm...",
                    html: "Especificamente, ¿Qué código hay que buscar?"
                });
            }
            else {
                e.preventDefault();
                Swal.fire({
                    title: "Estoy buscando en la base de datos...",
                    text: "Te redirigiré a la vista de la respuesta.",
                    icon: "success",
                    timer: 2000,
                    timerProgressBar: true,
                    didOpen: () => {
                        Swal.showLoading();
                    }
                }).then((result) => {
                    const form = e.target.closest('form');
                    if (form) {
                        form.submit();
                    }
                });
            }
        });
    }
});

document.addEventListener('DOMContentLoaded', () => { //PARA LAS ALERTAS DEL SELECT

});