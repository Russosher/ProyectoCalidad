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

/*function toggleSidebar(event) {
    // Obtener el botón que se hizo clic
    var boton = event.target;

    // Obtener el índice del botón dentro de la tabla
    var indice = Array.from(boton.parentNode.parentNode.children).indexOf(boton.parentNode);

    // Obtener la tabla y la fila correspondiente
    var tabla = document.getElementById("data-tablecontenedor2");
    var fila = tabla.rows[indice + 1]; // Sumamos 1 porque la primera fila es la cabecera

    // Obtener los datos de la fila
    var nombre = fila.cells[1].innerText;
    var apellido = fila.cells[2].innerText;
    var area = fila.cells[3].innerText;

    // Llenar el formulario con los datos obtenidos
    document.querySelector('#data-tablecontenedor3 input[placeholder="Nombre"]').value = nombre;
    document.querySelector('#data-tablecontenedor3 input[placeholder="Apellido"]').value = apellido;
    document.querySelector('#data-tablecontenedor3 select[aria-label="Default select example"]').value = area;
    document.querySelector('#data-tablecontenedor3 input[placeholder="EMAIL"]').value = email;
    document.querySelector('#data-tablecontenedor3 select[aria-label="STATUS"]').value = status;

    // Mostrar el modal
    var myModal = new bootstrap.Modal(document.getElementById('exampleModal'));
    myModal.show();
}
*/


