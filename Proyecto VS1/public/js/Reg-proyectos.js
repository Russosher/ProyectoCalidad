
function toggleSidebar() {

}

document.addEventListener('DOMContentLoaded', function() {
  let BotonRegistrar = document.getElementById('Botonregistrar');
  let MostrarTabla = document.getElementById('data-tablecontenedor');
  let BotonModificar = document.getElementById('BotonModificar');
  let MostrarTabla2 = document.getElementById('data-tablecontenedor2');
  let prevPageBtn = document.getElementById('prevPage');
  let nextPageBtn = document.getElementById('nextPage');
  let currentPageSpan = document.getElementById('currentPage');

  let itemsPerPage = 7;
  let currentPage = 1;

  if (MostrarTabla2) {
      let totalItems = MostrarTabla2.getElementsByTagName('tr').length;
      let totalPages = Math.ceil(totalItems / itemsPerPage);

      function showPage(page) {
          let startIndex = (page - 1) * itemsPerPage;
          let endIndex = startIndex + itemsPerPage;

          for (let i = 0; i < totalItems; i++) {
              MostrarTabla2.rows[i].style.display = (i >= startIndex && i < endIndex) ? 'table-row' : 'none';
          }

          currentPageSpan.textContent = page;
      }

      BotonRegistrar.addEventListener('click', function() {
          MostrarTabla.style.display = 'block';
          MostrarTabla2.style.display = 'none';
      });

      BotonModificar.addEventListener('click', function() {
          MostrarTabla2.style.display = 'block';
          MostrarTabla.style.display = 'none';

          // Muestra la primera página al cambiar a la tabla de modificar
          currentPage = 1;
          showPage(currentPage);
      });

      prevPageBtn.addEventListener('click', function() {
          if (currentPage > 1) {
              currentPage--;
              showPage(currentPage);
          }
      });

      nextPageBtn.addEventListener('click', function() {
          if (currentPage < totalPages) {
              currentPage++;
              showPage(currentPage);
          }
      });
  }
});
