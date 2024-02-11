document.addEventListener('DOMContentLoaded', function() {
    function toggleSidebar() {
        var sidebar = document.getElementById('sidebar');
        sidebar.classList.toggle('active');
    }

    let BotonRegistrar = document.getElementById('Botonregistrar');
    let MostrarFormulario = document.getElementById('data-tablecontenedor');


    BotonRegistrar.addEventListener('click', function() {
        MostrarFormulario.style.display = 'block';
    });


});

const myModal = new bootstrap.Modal('#exampleModal', {
    keyboard: false
});