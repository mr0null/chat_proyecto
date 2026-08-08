CREATE DATABASE foro_chat;
GO

USE foro_chat;
GO

CREATE TABLE rol(
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE estado_usuario (
    id INT PRIMARY KEY IDENTITY (1,1),
    nombre VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE usuario (
    id INT PRIMARY KEY IDENTITY (1,1),
    id_estado_usuario INT NOT NULL,
    id_rol_usuario INT NOT NULL,
    nickname VARCHAR(30) UNIQUE NOT NULL,
    apodo NVARCHAR(30),
    password_hash VARCHAR(255) NOT NULL,
    mail VARCHAR(254) UNIQUE NOT NULL,
    avatar VARCHAR(1000),
    fecha_registro DATETIME2 DEFAULT SYSDATETIME() NOT NULL,
    fecha_ultima_conexion DATETIME2,
    
    CONSTRAINT FK_USUARIO_ESTADO_USUARIO
    FOREIGN KEY (id_estado_usuario)
    REFERENCES estado_usuario(id),
    
    CONSTRAINT FK_USUARIO_ROL_USUARIO
    FOREIGN KEY (id_rol_usuario)
    REFERENCES rol_usuario(id)
);

CREATE TABLE tipo_conversacion(
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE estado_conversacion(
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE categoria(
    id INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE conversacion(
    id INT PRIMARY KEY IDENTITY(1,1),
    id_autor_original INT NOT NULL,
    id_estado_conversacion INT NOT NULL,
    id_categoria INT NOT NULL,
    id_tipo_conversacion INT NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    miniatura VARCHAR(1000),

    CONSTRAINT FK_CONVERSACION_USUARIO
    FOREIGN KEY (id_autor_original)
    REFERENCES usuario(id),

    CONSTRAINT FK_CONVERSACION_ESTADO_CONVERSACION
    FOREIGN KEY (id_estado_conversacion)
    REFERENCES estado_conversacion(id),

    CONSTRAINT FK_CONVERSACION_CATEGORIA
    FOREIGN KEY (id_categoria)
    REFERENCES categoria(id),

    CONSTRAINT FK_CONVERSACION_TIPO_CONVERSACION
    FOREIGN KEY (id_tipo_conversacion)
    REFERENCES tipo_conversacion(id)
);

CREATE TABLE mensaje(
    id INT PRIMARY KEY IDENTITY(1,1),
    id_mensaje_padre INT,
    id_autor INT NOT NULL,
    id_conversacion INT NOT NULL,
    contenido VARCHAR(1000) NOT NULL,
    multimedia VARCHAR(1000),
    fecha_envio DATETIME2 DEFAULT SYSDATETIME() NOT NULL,
    
    CONSTRAINT FK_MENSAJE_MENSAJE_PADRE
    FOREIGN KEY (id_mensaje_padre)
    REFERENCES mensaje(id),

    CONSTRAINT FK_MENSAJE_USUARIO
    FOREIGN KEY (id_autor)
    REFERENCES usuario(id),
    
    CONSTRAINT FK_MENSAJE_CONVERSACION
    FOREIGN KEY (id_conversacion)
    REFERENCES conversacion(id)
);

