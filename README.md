# Backend en C# (Versión 5.0) con Conexión a SQL Server

Este repositorio contiene un backend desarrollado en C# utilizando la versión 5.0. El backend está diseñado para interactuar con una base de datos SQL Server. A continuación se detallan los pasos para configurar y ejecutar el proyecto.

## Requisitos

Antes de comenzar, asegúrate de tener los siguientes requisitos instalados:

- **.NET 5.0 SDK**: Necesario para ejecutar y compilar el proyecto.
  - [Descargar .NET 5.0](https://dotnet.microsoft.com/download/dotnet/5.0)
  
- **SQL Server**: El proyecto está configurado para conectarse a una base de datos SQL Server.
  - [Descargar SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
  - **SQL Server Management Studio (SSMS)** para la gestión de la base de datos.
    - [Descargar SSMS](https://aka.ms/ssmsfullsetup)

- **Visual Studio** (opcional, pero recomendado): Un entorno de desarrollo que facilita la administración de proyectos en C#.
  - [Descargar Visual Studio](https://visualstudio.microsoft.com/)

## Configuración de la base de datos

1. **Crear una base de datos en SQL Server**:
   - Abre SQL Server Management Studio (SSMS) y conéctate a tu instancia de SQL Server.
   - Crea una nueva base de datos o usa una existente.

   ```sql
   CREATE DATABASE NombreDeTuBaseDeDatos;
