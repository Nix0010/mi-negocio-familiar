# Documentación de Llaves

## Tabla clientes
- PK: cliente_id
- FKs: ninguna
- Candidatas: email, documento, telefono

## Tabla empleados
- PK: empleado_id
- FKs: ninguna
- Candidatas: email, telefono, nombre+cargo

## Tabla productos
- PK: producto_id
- FKs: ninguna
- Candidatas: codigo, nombre+talla, nombre+categoria

## Tabla pedidos
- PK: pedido_id
- FKs: cliente_id → clientes, empleado_id → empleados
- Candidatas: fecha+cliente_id, estado+empleado_id, pedido_id

## Tabla detalle_pedidos
- PK: detalle_id
- FKs: pedido_id → pedidos, producto_id → productos
- Candidatas: pedido_id+producto_id, cantidad, subtotal

## Tabla pagos
- PK: pago_id
- FKs: pedido_id → pedidos, cliente_id → clientes, empleado_id → empleados
- Candidatas: metodo+fecha_pago, monto, cliente_id+pedido_id
