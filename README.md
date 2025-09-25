# Boutique de Pijamas - Proyecto Familiar

Este proyecto corresponde a una **boutique de ropa especializada en pijamas**, un negocio familiar que nació con la idea de ofrecer comodidad, calidad y estilo a todas las personas que disfrutan de esos pequeños momentos de descanso en casa.  



## Historia y descripción del negocio
La **Boutique de Pijamas** surge como un emprendimiento familiar que busca dar respuesta a una necesidad cotidiana: tener ropa cómoda para dormir que no solo sea práctica, sino también bonita y variada.  
Comenzamos ofreciendo pijamas hechos a mano en un pequeño taller y con el tiempo el negocio fue creciendo gracias a la confianza de nuestros clientes. Hoy contamos con un catálogo que incluye pijamas para **mujeres, hombres y niños**, con diferentes diseños, tallas y materiales.  

Al ser un negocio en crecimiento, vimos la importancia de llevar un control más organizado de nuestros procesos: desde la **gestión de clientes** hasta el **seguimiento de pedidos, control de stock y pagos**. Este proyecto de base de datos busca dar solución a esa necesidad, apoyándose en herramientas digitales modernas como **PostgreSQL y DBeaver**.



## Tablas principales del sistema
1. **Clientes**: guarda la información de cada comprador, como nombre, contacto y documento de identidad.  
2. **Empleados**: incluye datos del personal encargado de ventas y administración.  
3. **Productos**: catálogo de pijamas, con sus categorías, tallas, precios y códigos únicos.  
4. **Pedidos**: registro de compras realizadas por los clientes.  
5. **Detalle_pedidos**: desglosa qué productos componen cada pedido y en qué cantidad.  
6. **Pagos**: controla las transacciones realizadas, métodos de pago y responsables de procesarlas.  


##  Llaves y relaciones
- Todas las tablas cuentan con **llaves primarias (PK)**.  
- Se definieron más de **8 llaves foráneas (FK)** para conectar clientes, empleados, pedidos, productos y pagos.  
- Cada tabla tiene **3 o más llaves candidatas**, lo que permite garantizar la integridad y consistencia de los datos.  

Este diseño permite que la información esté siempre relacionada de manera lógica y que sea sencillo consultar cualquier aspecto del negocio.


## Requisitos académicos cumplidos
✔ 5 tablas mínimo interconectadas  
✔ Todas las PKs identificadas  
✔ 8 FKs conectando tablas  
✔ 3 llaves candidatas por tabla  
✔ 30 registros con datos reales inspirados en clientes, empleados y productos de la boutique  
✔ 10 consultas complejas con `JOIN` para obtener reportes útiles (ventas, productos más vendidos, clientes frecuentes, etc.)  


##  Estructura del repositorio
```
/mi-negocio-familiar/
├── 📄 README.md (descripción del negocio)
├── 📊 diagrama_relacional.png
├── 🗃️ crear_tablas.sql
├── 📝 insertar_datos.sql
├── 🔍 consultas_complejas.sql
├── 📋 documentacion_llaves.md
└── 🎥 video_demostracion.mp4 (máx 3 minutos)
```


##  Tecnologías utilizadas
- **PostgreSQL** → Base de datos relacional.  
- **DBeaver** → Herramienta de gestión para administración y consultas.  
- **Mermaid / Draw.io** → Diseño de diagramas entidad-relación.  


Más allá de los datos y las consultas, este proyecto nos recuerda que detrás de cada pedido hay una persona que confía en nosotros, y que la organización y el buen servicio son la base para seguir construyendo un futuro próspero.  
