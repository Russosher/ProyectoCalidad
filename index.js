


const { Sequelize } = require('sequelize');


const sequelize = new Sequelize({
  dialect: 'postgres', 
  host:  'monorail.proxy.rlwy.net', 
  port: 5432, 
  database: 'Proyecto_Calidad',
  username: 'postgres',
  password: '12345678',
});

// Realiza la conexión a la base de datos
sequelize.authenticate()
  .then(() => {
    console.log('Conexión exitosa a la base de datos');
  })
  .catch(err => {
    console.error('Error de conexión a la base de datos:', err);
  });


const express = require("express");
const { Pool } = require('pg');

const app = express();
app.use(express.json());

const pool = new Pool({
    connectionString: 'postgresql://postgres:12345678@monorail.proxy.rlwy.net:5432/Proyecto_Calidad'
});;

// Manejar errores de conexión
pool.on('error', (err, client) => {
    console.error('Error de conexión a la base de datos:', err);
});

// Establecer la conexión a la base de datos
pool.connect((err, client, done) => {
    if (err) {
        console.error('Error de conexión a la base de datos:', err);
        return;
    }
    console.log('Conexión a la base de datos establecida.');
});

app.get("/", function(req, res) {
    // Código para manejar la solicitud GET en la ruta "/"
});

app.post('/guardarDesarrollador', (req, res) => {
    const { nombre, apellido, area, cargo, estado } = req.body;

    // Consulta SQL para insertar los datos en la tabla desarrollador
    const sql = `INSERT INTO desarrollador (nombre_desarrollador, apellido_desarrollador, area_desarrollador, cargo, descripcion_estado) VALUES ($1, $2, $3, $4, $5)`;

    // Ejecutar la consulta SQL
    pool.query(sql, [nombre, apellido, area, cargo, estado], (err, result) => {
        if (err) {
            console.error('Error al insertar datos en la base de datos:', err);
            res.status(500).send('Error interno del servidor');
            return;
        }

        console.log('Datos insertados correctamente en la base de datos.');
        res.status(200).send('Datos insertados correctamente');
    });
});



const server = app.listen(3000, () => {
    console.log("Servidor creado exitosamente, http://localhost:3000");
});




