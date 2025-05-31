create table if not exists registro_pedido(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    pedidoId INT UNSIGNED NOT NULL,
    menu_id INT UNSIGNED NOT NULL,
    creadoEl TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (pedidoId) REFERENCES pedidos (id),
    FOREIGN KEY (menu_id) REFERENCES menues (id),
    PRIMARY KEY(id)
);