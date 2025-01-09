const tableBody = document.getElementById('table-body');

// URL del endpoint de tu backend en C#
const apiUrl = 'https://mi-servidor/api/productos';

// Función para cargar los datos desde el backend
async function cargarProductos() {
    try {
        const response = await fetch(apiUrl);

        // Verifica si la respuesta es correcta
        if (!response.ok) {
            throw new Error(`Error en la solicitud: ${response.statusText}`);
        }

        // Convierte la respuesta en JSON
        const productos = await response.json();

        // Limpia el contenido previo en la tabla
        tableBody.innerHTML = '';

        // Genera filas en la tabla con los datos recibidos
        productos.forEach(producto => {
            const row = document.createElement('tr');
            row.innerHTML = `
                <td>${producto.id}</td>
                <td>${producto.nombre}</td>
                <td>${producto.descripcion}</td>
                <td></td>
                <td>${producto.precio}</td>
                <td>${producto.estado ? 'Activo' : 'Inactivo'}</td>
            `;
            tableBody.appendChild(row);
        });
    } catch (error) {
        console.error('Error al cargar los productos:', error);
    }
}

// Llama a la función para cargar los productos al cargar la página
cargarProductos();

