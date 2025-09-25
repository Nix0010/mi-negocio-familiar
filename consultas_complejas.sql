-- Consultas complejas con JOINs

-- 1. Clientes con sus pedidos
SELECT c.nombre, c.apellido, p.pedido_id, p.fecha, p.estado
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id;

-- 2. Detalle de pedidos con productos
SELECT p.pedido_id, pr.nombre, d.cantidad, d.subtotal
FROM pedidos p
JOIN detalle_pedidos d ON p.pedido_id = d.pedido_id
JOIN productos pr ON d.producto_id = pr.producto_id;

-- 3. Pagos realizados por cada cliente
SELECT c.nombre, c.apellido, pa.monto, pa.metodo, pa.fecha_pago
FROM clientes c
JOIN pagos pa ON c.cliente_id = pa.cliente_id;

-- 4. Pedidos gestionados por empleados
SELECT e.nombre, e.cargo, p.pedido_id, p.estado
FROM empleados e
JOIN pedidos p ON e.empleado_id = p.empleado_id;

-- 5. Total vendido por producto
SELECT pr.nombre, SUM(d.cantidad) as total_vendido
FROM productos pr
JOIN detalle_pedidos d ON pr.producto_id = d.producto_id
GROUP BY pr.nombre;

-- 6. Clientes que compraron más de 1 producto
SELECT c.nombre, COUNT(d.producto_id) as productos_comprados
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
JOIN detalle_pedidos d ON p.pedido_id = d.pedido_id
GROUP BY c.nombre
HAVING COUNT(d.producto_id) > 1;

-- 7. Total recaudado por métodos de pago
SELECT metodo, SUM(monto) as total
FROM pagos
GROUP BY metodo;

-- 8. Pedidos y pagos relacionados
SELECT p.pedido_id, p.estado, pa.monto, pa.metodo
FROM pedidos p
JOIN pagos pa ON p.pedido_id = pa.pedido_id;

-- 9. Productos con stock menor a 20
SELECT nombre, stock
FROM productos
WHERE stock < 20;

-- 10. Empleado que procesó más pagos
SELECT e.nombre, COUNT(pa.pago_id) as pagos_procesados
FROM empleados e
JOIN pagos pa ON e.empleado_id = pa.empleado_id
GROUP BY e.nombre
ORDER BY pagos_procesados DESC
LIMIT 1;
