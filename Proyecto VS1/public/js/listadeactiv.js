document.addEventListener('DOMContentLoaded', function() {
    function toggleSidebar() {
        var sidebar = document.getElementById('sidebar');
        sidebar.classList.toggle('active');
    }

    let botonBuscar = document.querySelector('.btn-outline-success');
    let mostrarTabla = document.getElementById('data-tablecontenedor2');
    let mostrarFormulario = document.getElementById('data-tablecontenedor');


    botonBuscar.addEventListener('click', function(event) {
        event.preventDefault();
        mostrarTabla.style.display = 'inline-table';
        mostrarFormulario.style.display = 'none';
    });

    let botonModificar = document.querySelector('.modificar-');
    botonModificar.addEventListener('click', function(event) {
        event.preventDefault();
        mostrarFormulario.style.display = 'block';
        mostrarTabla.style.display = 'none';
    });
});
