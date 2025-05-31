create table if not exists usuarios(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(80) NOT NULL ,
    dni VARCHAR(8) NOT NULL UNIQUE,
    password CHAR(60) NOT NULL,
    telefono VARCHAR(12) NOT NULL,
    rolId int UNSIGNED NOT NULL,
    estado BOOLEAN DEFAULT 1,
    CONSTRAINT fk_rol FOREIGN KEY (rolId) REFERENCES roles(id),
    PRIMARY KEY(id)
);