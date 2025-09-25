-- Crear base de datos
CREATE DATABASE boutique_pijamas;
\c boutique_pijamas;

-- Tabla clientes
CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(20),
    direccion VARCHAR(100),
    documento VARCHAR(20) UNIQUE
);

-- Tabla empleados
CREATE TABLE empleados (
    empleado_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    cargo VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(20)
);

-- Tabla productos
CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    talla VARCHAR(10),
    precio NUMERIC(10,2),
    stock INT,
    codigo VARCHAR(20) UNIQUE
);

-- Tabla pedidos
CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(cliente_id),
    empleado_id INT REFERENCES empleados(empleado_id),
    fecha DATE,
    estado VARCHAR(20)
);

-- Tabla detalle_pedidos
CREATE TABLE detalle_pedidos (
    detalle_id SERIAL PRIMARY KEY,
    pedido_id INT REFERENCES pedidos(pedido_id),
    producto_id INT REFERENCES productos(producto_id),
    cantidad INT,
    subtotal NUMERIC(10,2)
);

-- Tabla pagos
CREATE TABLE pagos (
    pago_id SERIAL PRIMARY KEY,
    pedido_id INT REFERENCES pedidos(pedido_id),
    cliente_id INT REFERENCES clientes(cliente_id),
    empleado_id INT REFERENCES empleados(empleado_id),
    fecha_pago DATE,
    monto NUMERIC(10,2),
    metodo VARCHAR(20)
);
