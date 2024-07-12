# **Foro Alura: API Java con Spring Boot**

Este proyecto es una API en Java desarrollada con Spring Boot para gestionar un foro de discusión denominado **"Foro Alura"**. La API proporciona operaciones CRUD (Crear, Leer, Actualizar, Eliminar) para tópicos y otras entidades relacionadas.

## **Características**

### **Registro de un nuevo tópico**

La API permite registrar nuevos tópicos mediante un endpoint `POST` en la URI `/topico`. Los datos del tópico, que incluyen título, mensaje, autor y curso, deben enviarse en el cuerpo de la solicitud en formato JSON. Las reglas de negocio son:

- Todos los campos son obligatorios.
- No se permiten registros duplicados con el mismo título y mensaje.

### **Listado de tópicos**

La API ofrece un endpoint `GET` en la URI `/topico` para obtener la lista de todos los tópicos. La respuesta incluye información como título, mensaje, fecha de creación, estado, autor y curso en formato JSON.

### **Detalle de un tópico**

Para obtener detalles de un tópico específico, se utiliza un endpoint `GET` en la URI `/topico/{id}`, donde `{id}` es el identificador único del tópico. La respuesta incluye título, mensaje, fecha de creación, estado, autor y curso en formato JSON.

### **Eliminación de un tópico**

La API permite eliminar un tópico específico mediante un endpoint `DELETE` en la URI `/topico/{id}`, donde `{id}` es el identificador único del tópico a eliminar.

### **Registro de usuarios y autenticación**

La API incluye funcionalidades para registrar nuevos usuarios y autenticarlos. Se aceptan solicitudes `POST` en la URI `/usuario` para registrar usuarios, enviando nombre, correo electrónico, nombre de usuario y contraseña en formato JSON. Las reglas de negocio son:

- Todos los campos son obligatorios.
- No se permiten registros duplicados con el mismo correo electrónico o nombre de usuario.
- Las contraseñas se almacenan de forma segura utilizando encriptación.

La autenticación se realiza mediante **JSON Web Tokens (JWT)**. Tras registrarse e iniciar sesión con sus credenciales, la API genera un JWT que el cliente debe incluir en los encabezados de solicitudes posteriores para acceder a recursos protegidos.

## **Tecnologías Utilizadas**

- **Java**: Lenguaje de programación principal.
- **Spring Boot**: Framework para desarrollo de aplicaciones Java.
- **Controladores**: Manejan las solicitudes HTTP y definen los endpoints de la API.
- **Repositorios**: Interactúan con la base de datos para realizar operaciones CRUD.
- **Base de datos**: Se puede utilizar MySQL, PostgreSQL u otra base de datos para almacenar la información de tópicos, usuarios, respuestas, etc.

## **Configuración y Ejecución**

Para configurar y ejecutar la aplicación:

1. Clona el repositorio en tu máquina local.
2. Configura la base de datos de tu elección.
3. Actualiza la configuración de la base de datos en el archivo `application.properties`.
4. Ejecuta la aplicación usando tu IDE favorito o mediante la línea de comandos.
5. Realiza las solicitudes HTTP correspondientes con herramientas como **Insomnia**.

   
