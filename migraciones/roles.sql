create table if not exists roles(
    id int UNSIGNED AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    descripcion TEXT,
    creadoEl TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    actualizadoEl TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
);