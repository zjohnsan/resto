create table if not exists mesas(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    capacidad INT UNSIGNED NOT NULL,
    mozo_id INT UNSIGNED NOT NULL,
    ocupada BOOLEAN DEFAULT 0,
    descripcion_reserva VARCHAR(255) NULL DEFAULT NULL,
    reservada DATETIME NOT NULL,
    creadoEl TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    actualizadoEl TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT fk_mozo_mesa FOREIGN KEY (mozo_id) REFERENCES usuarios(id),
    PRIMARY KEY(id)
);