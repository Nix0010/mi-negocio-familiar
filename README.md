# Boutique de Pijamas - Proyecto Familiar

Este proyecto corresponde a una boutique de ropa especializada en pijamas, un negocio familiar que nació con la idea de ofrecer comodidad, calidad y estilo a todas las personas que disfrutan de esos pequeños momentos de descanso en casa.

La historia de la boutique empieza como un emprendimiento familiar. Todo surge de la necesidad de tener ropa cómoda para dormir que no solo fuera práctica, sino también bonita y variada. Al inicio hacíamos pijamas a mano en un pequeño taller, y poco a poco, gracias a la confianza de nuestros clientes, el negocio fue creciendo. Hoy contamos con un catálogo más amplio que incluye pijamas para mujeres, hombres y niños, con distintos diseños, tallas y materiales.

A medida que fuimos creciendo nos dimos cuenta de la importancia de llevar un control más organizado de lo que hacíamos: la gestión de clientes, el seguimiento de pedidos, el control de stock y los pagos. Para dar solución a esa necesidad armamos un proyecto de base de datos usando PostgreSQL y DBeaver, que nos ayudan a mantener todo en orden y facilitar el trabajo.

En cuanto al sistema, se pensó en unas tablas principales:  
- **Clientes**: guarda la información de cada comprador (nombre, contacto, documento).  
- **Empleados**: incluye los datos del personal que atiende ventas y administración.  
- **Productos**: catálogo de pijamas con categorías, tallas, precios y códigos únicos.  
- **Pedidos**: registro de compras hechas por los clientes.  
- **Detalle_pedidos**: desglose de los productos que componen cada pedido.  
- **Pagos**: registro de transacciones, métodos de pago y responsables.  

Todas estas tablas tienen llaves primarias (PK), más de 8 llaves foráneas (FK) para conectar la información entre clientes, empleados, pedidos, productos y pagos, y en cada tabla se definieron varias llaves candidatas para garantizar consistencia. De esta forma todo queda relacionado de manera lógica y es más fácil consultar cualquier aspecto del negocio.

Para cumplir con los requisitos académicos, este proyecto cuenta con al menos 5 tablas interconectadas, todas las PKs claras, 8 FKs, 3 llaves candidatas por tabla, 30 registros reales de clientes, empleados y productos, además de 10 consultas complejas con JOIN que permiten generar reportes como ventas, productos más vendidos o clientes frecuentes.

La estructura del repositorio es la siguiente:

