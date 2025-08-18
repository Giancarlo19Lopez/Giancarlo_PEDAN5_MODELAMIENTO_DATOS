--Creación de Base de Datos

CREATE DATABASE bd_banca_inc_negocio;

--Creación de Tablas

--Tipos de Indicadores
USE bd_banca_inc_negocio
CREATE TABLE tipos_indicador (
id INT IDENTITY(1,1) PRIMARY KEY,
nombre VARCHAR(255) UNIQUE NOT NULL,
descripcion VARCHAR(MAX) NULL
);

--Zonas
CREATE TABLE zonas(
id INT IDENTITY(1,1) PRIMARY KEY,
codigo VARCHAR(6) UNIQUE NOT NULL,
nombre VARCHAR(155) UNIQUE NOT NULL,
ubigeo_id INT
);

--Empleados
CREATE TABLE empleados (
id INT IDENTITY(1,1) PRIMARY KEY,
nombres VARCHAR(255) NOT NULL,
apellidos VARCHAR(255) NOT NULL,
numero_registro CHAR(6) UNIQUE NOT NULL,
cargo VARCHAR(100) NULL,
unidad VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
celular VARCHAR(20) UNIQUE,
);

--Sucursales
CREATE TABLE sucursales (
id INT IDENTITY(1,1) PRIMARY KEY,
zona_id INT FOREIGN KEY REFERENCES zonas(id),
gerente_id INT FOREIGN KEY REFERENCES empleados(id),
codigo VARCHAR(6) UNIQUE NOT NULL,
nombre VARCHAR(255) UNIQUE NOT NULL,
email VARCHAR(100) UNIQUE,
telefono VARCHAR(20) UNIQUE,
coordenada_gps GEOGRAPHY
);

CREATE TABLE indicadores (
id INT IDENTITY(1,1) PRIMARY KEY,
empleado_id INT FOREIGN KEY REFERENCES empleados(id),
tipo_indicador_id INT FOREIGN KEY REFERENCES tipos_indicador(id),
codigo CHAR(6) UNIQUE NOT NULL,
nombre VARCHAR(255) UNIQUE NOT NULL,
unidad_medida VARCHAR(100) NOT NULL,
);

CREATE TABLE registros_indicadores_diarios(
id INT IDENTITY(1,1) PRIMARY KEY,
sucursal_id INT,
indicador_id INT,
fecha_reporte DATE,
valor_real DECIMAL(9,2),
valor_meta DECIMAL(9,2),
create_at DATETIME DEFAULT GETDATE(),
update_at DATETIME,
deleted_ad DATETIME,
create_by INT,
update_by INT,
deleted_by INT,
CONSTRAINT fk_sucursal_indicador_id FOREIGN KEY (sucursal_id) REFERENCES sucursales(id),
FOREIGN KEY (indicador_id) REFERENCES indicadores(id),
);

CREATE TABLE desviaciones_indicadores(
id INT IDENTITY(1,1) PRIMARY KEY,
registro_diario_indicador_id INT UNIQUE NOT NULL,
diferencia_absoluta DECIMAL(9,2) NOT NULL,
diferencia_porcentual DECIMAL(9,2) NOT NULL, 
clasificación VARCHAR(155) NOT NULL,
CONSTRAINT fk_registro_diario_indicador FOREIGN KEY (registro_diario_indicador_id) REFERENCES registros_indicadores_diarios(id),
);

CREATE TABLE ubigeos(
id INT IDENTITY(1,1) PRIMARY KEY,
ubigeo CHAR(6) UNIQUE NOT NULL,
departamento VARCHAR(100) NOT NULL,
provincia VARCHAR(155) NOT NULL,
distrito VARCHAR(155) NOT NULL,
region_natural VARCHAR(55) NOT NULL,
);

CREATE TABLE zona_ubigeos(
id INT IDENTITY(1,1) PRIMARY KEY,
zona_id INT NOT NULL,
ubigeo_id INT NOT NULL,
FOREIGN KEY (zona_id) REFERENCES zonas(id),
FOREIGN KEY (ubigeo_id) REFERENCES ubigeos(id)
);
