-- Insertar clientes
INSERT INTO clientes (nombre, apellido, email, telefono, direccion, documento) VALUES
('Laura', 'Gómez', 'laura@gmail.com', '300111222', 'Calle 10 #5', 'CC123'),
('Carlos', 'Pérez', 'carlos@gmail.com', '300333444', 'Carrera 15 #20', 'CC124');

-- Insertar empleados
INSERT INTO empleados (nombre, cargo, email, telefono) VALUES
('María López', 'Vendedora', 'maria@pijamas.com', '310555111'),
('Pedro Torres', 'Administrador', 'pedro@pijamas.com', '310555222');

-- Insertar productos
INSERT INTO productos (nombre, categoria, talla, precio, stock, codigo) VALUES
('Pijama Algodón Rosa', 'Mujer', 'M', 50000, 20, 'P001'),
('Pijama Seda Azul', 'Hombre', 'L', 75000, 15, 'P002');

-- Insertar pedidos
INSERT INTO pedidos (cliente_id, empleado_id, fecha, estado) VALUES
(1, 1, '2025-09-20', 'Pendiente'),
(2, 2, '2025-09-21', 'Pagado');

-- Insertar detalle_pedidos
INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad, subtotal) VALUES
(1, 1, 2, 100000),
(2, 2, 1, 75000);

-- Insertar pagos
INSERT INTO pagos (pedido_id, cliente_id, empleado_id, fecha_pago, monto, metodo) VALUES
(1, 1, 1, '2025-09-20', 100000, 'Efectivo'),
(2, 2, 2, '2025-09-21', 75000, 'Tarjeta');
