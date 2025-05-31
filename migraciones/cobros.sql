create table if not exists cobros(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    pedidoId INT NOT NULL UNSIGNED,
    metodo VARCHAR(60) NULL DEFAULT NULL,
    monto FLOAT NOT NULL,
    creadoEl DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_cobro_pedido FOREIGN KEY (pedidoId) REFERENCES pedidos(id),
    PRIMARY KEY(id)
);