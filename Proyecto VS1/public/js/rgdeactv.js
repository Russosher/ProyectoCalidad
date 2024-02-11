document.addEventListener('DOMContentLoaded', function() {
    function toggleSidebar() {
        var sidebar = document.getElementById('sidebar');
        sidebar.classList.toggle('active');
    }

    let BotonRegistrar = document.getElementById('Botonregistrar');
    let MostrarTabla = document.getElementById('data-tablecontenedor');
    let BotonConsultar = document.getElementById('BotonConsultar');
    let MostrarTabla2 = document.getElementById('data-tablecontenedor2');
    let BotonModificar = document.querySelector('.modificar-');
    let MostrarTabla3 = document.getElementById('data-tablecontenedor3');

    BotonRegistrar.addEventListener('click', function() {
        MostrarTabla.style.display = 'block';
        MostrarTabla2.style.display = 'none';
        MostrarTabla3.style.display = 'none';
    });

    BotonConsultar.addEventListener('click', function() {
        MostrarTabla2.style.display = 'inline-table';
        MostrarTabla.style.display = 'none';
        MostrarTabla3.style.display = 'none';
    });

    BotonModificar.addEventListener('click', function() {
        MostrarTabla3.style.display = 'block';
        MostrarTabla2.style.display = 'none';
        MostrarTabla.style.display = 'none';
    });
});

const myModal = new bootstrap.Modal('#exampleModal', {
    keyboard: false
});