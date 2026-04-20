document.addEventListener('DOMContentLoaded', () => {
    // SCRIPT PARA EL LOGIN
    const btnLogIn = document.getElementById('btnIngresar');
    if (btnLogIn) {
        btnLogIn.addEventListener("click", e => {
            e.preventDefault();
            const user = document.getElementById('user');
            const password = document.getElementById('pass');

            if (user.value.trim() !== "" && password.value.trim() !== "") {
                if (password.value==="admin" && user.value==="admin") {
                    Swal.fire({
                        title: "Hola!",
                        text: "Usuario y contraseña correctas. Bienvenido/a.",
                        icon: "success",
                        color: "#fff",
                        background: "#1a1a1a",
                        confirmButtonColor: "#f54927",
                        draggable: true
                    }).then(result => {
                        window.location.href = "/insert"
                    });
                } else {
                    Swal.fire({
                        title: "Ups...",
                        text: "El usuario o la contraseña son incorrectas. Revisalas e intenta nuevamente.",
                        icon: "error",
                        color: "#fff",
                        background: "#1a1a1a",
                        confirmButtonColor: "#f54927",
                        draggable: true
                    });
                }
            } else {
                Swal.fire({
                    title: "Ups...",
                    text: "Tienes que llenar el campo de usuario y contraseña. Revisalas e intenta nuevamente.",
                    icon: "warning",
                    color: "#fff",
                    background: "#1a1a1a",
                    confirmButtonColor: "#f54927",
                    draggable: true
                });
            }
        });
    }
});