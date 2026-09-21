-- CREAR BASE DE DATOS: se crea un nuevo contenedor físico donde se almacenarán todos los datos, tablas, vistas, índices y procedimientos almacenados
CREATE DATABASE modulo2_unidad1_diseno;

-- Clausula USE: nos permite usar la base de datos recien creada
USE modulo2_unidad1_diseno;

-- CREAR TABLA CLIENTES
-- En id_cliente utilicé INT porque necesito que un número entero represente un código único para cada cliente; NOT NULL para que la columna siempre tenga
-- valor y no quede vacía (en los casos futuros se aplica por lo mismo); IDENTITY (1,1) para que el codigo que se genere empiece por 1 y vaya aumentando 
-- de 1 en 1; y PRIMARY KEY para que sea la columna que identifica de forma única cada fila.
-- En nombre utilicé VARCHAR(50) ya que es texto y puede variar su longitud.
-- En perfil_bio utilicé TEXT ya que puede ser un bloque de texto largo.
-- En fecha_registro se utilizó DATE para que efectivamente la fecha se guarde como fecha y no como texto.
CREATE TABLE Clientes(
id_cliente INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
perfil_bio TEXT NOT NULL, 
fecha_registro DATE NOT NULL
);

-- CREAR TABLA PRODUCTOS
-- En id_productos ocurre lo mismo que en id_clientes de la tabla clientes.
-- En descripción utilicé TEXT ya que podría ser un bloque de texto largo.
-- En precio utlicé DECIMAL(10,2) ya que necesito un valor exacto que no pierda precisión.
-- En esta_activo me parecio que lo mejor era usar un nímer para identificar si esta activo (1) o inactivo (2), ya que es algo claro para cualquier
-- persona que consulte la base de datos.
CREATE TABLE Productos(
id_producto INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
descripcion VARCHAR(255) NOT NULL,
precio DECIMAL(10,2) NOT NULL,
esta_activo BIT(1) NOT NULL);
