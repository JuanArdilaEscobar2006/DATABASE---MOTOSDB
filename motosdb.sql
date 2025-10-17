-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-10-2025 a las 22:19:25
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `motosdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `documento`, `telefono`, `correo`, `direccion`) VALUES
(1, 'Juan Pérez', '12345678', '3001112233', 'juanperez@gmail.com', 'Cra 10 #12-34'),
(2, 'María Gómez', '98765432', '3109876543', 'mariagomez@hotmail.com', 'Calle 5 #45-22'),
(3, 'Carlos Ramírez', '45678912', '3204567890', 'carlosramirez@yahoo.com', 'Calle 32 B sur #29-21'),
(14, 'Andrés Torres', '11223344', '3019876543', 'andrestorres@gmail.com', 'Carrera 8 #14-25'),
(15, 'Laura Méndez', '22334455', '3201122334', 'lauramendez@hotmail.com', 'Avenida 9 #23-41'),
(16, 'Felipe Gómez', '33445566', '3112233445', 'felipegomez@yahoo.com', 'Calle 12 #9-18'),
(17, 'Sofía Ramírez', '44556677', '3023344556', 'sofiaramirez@gmail.com', 'Transversal 5 #67-20'),
(18, 'Camilo Herrera', '55667788', '3004455667', 'camilo.herrera@outlook.com', 'Diagonal 21 #45-60');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `nombre`, `rol`, `correo`, `salario`, `id_sucursal`) VALUES
(1, 'Pedro López', 'Vendedor', 'pedro.lopez@empresa.com', 2500000.00, 1),
(2, 'Ana Torres', 'Mecánico', 'ana.torres@empresa.com', 2800000.00, 2),
(3, 'Luis Martínez', 'Cajero', 'luis.martinez@empresa.com', 2200000.00, 3),
(4, 'Santiago Ruiz', 'Asesor Comercial', 'santiago.ruiz@empresa.com', 2400000.00, 1),
(5, 'Mariana Pérez', 'Mecánico', 'mariana.perez@empresa.com', 2850000.00, 4),
(6, 'David Gómez', 'Administrador', 'david.gomez@empresa.com', 3500000.00, 5),
(7, 'Laura Méndez', 'Vendedor', 'laura.mendez@empresa.com', 2300000.00, 2),
(8, 'Camilo Herrera', 'Cajero', 'camilo.herrera@empresa.com', 2100000.00, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `monto_total` decimal(10,2) DEFAULT NULL,
  `fecha_emision` date DEFAULT NULL,
  `id_venta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`id_factura`, `monto_total`, `fecha_emision`, `id_venta`) VALUES
(1, 12000000.00, '2025-09-05', 1),
(2, 10500000.00, '2025-09-02', 2),
(3, 9500000.00, '2023-11-15', 3),
(9, 15500000.00, '2024-01-20', 14),
(10, 11500000.00, '2024-02-10', 15),
(11, 17500000.00, '2024-03-05', 16),
(12, 18500000.00, '2024-04-12', 17),
(13, 9500000.00, '2024-05-18', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `garantia`
--

CREATE TABLE `garantia` (
  `id_garantia` int(11) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `cobertura` varchar(100) DEFAULT NULL,
  `id_vehiculo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `garantia`
--

INSERT INTO `garantia` (`id_garantia`, `fecha_inicio`, `fecha_fin`, `cobertura`, `id_vehiculo`) VALUES
(1, '2025-02-13', '2027-02-13', 'Cobertura total 2 años', 1),
(2, '2022-06-15', '2024-06-15', 'Cobertura parcial motor', 2),
(3, '2023-12-01', '2025-12-01', 'Cobertura eléctrica y mecánica', 3),
(14, '2024-01-01', '2026-01-01', 'Cobertura completa 2 años', 16),
(15, '2024-02-10', '2026-02-10', 'Cobertura parcial motor', 17),
(16, '2024-03-05', '2026-03-05', 'Cobertura eléctrica', 18),
(17, '2024-04-12', '2026-04-12', 'Cobertura total', 19),
(18, '2024-05-18', '2026-05-18', 'Cobertura de frenos y motor', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_mantenimiento`
--

CREATE TABLE `orden_mantenimiento` (
  `id_orden` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `tipo_servicio` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `id_vehiculo` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `orden_mantenimiento`
--

INSERT INTO `orden_mantenimiento` (`id_orden`, `fecha`, `tipo_servicio`, `estado`, `id_vehiculo`, `id_empleado`) VALUES
(1, '2024-01-10', 'Cambio de aceite', 'Completada', 1, 2),
(2, '2024-02-20', 'Cambio de frenos', 'Pendiente', 2, 2),
(3, '2024-03-05', 'Ajuste de cadena', 'En proceso', 3, 2),
(4, '2024-04-01', 'Cambio de aceite', 'Completada', 16, 5),
(5, '2024-05-10', 'Cambio de filtro de aire', 'Completada', 17, 5),
(6, '2024-06-12', 'Revisión general', 'Pendiente', 18, 5),
(7, '2024-07-01', 'Ajuste de válvulas', 'En proceso', 19, 2),
(8, '2024-08-20', 'Cambio de pastillas de freno', 'Completada', 20, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre`, `contacto`, `direccion`) VALUES
(1, 'Repuestos MotoPro', 'Carlos Gómez', 'Cra 50 #20-30'),
(2, 'SpeedParts Ltda', 'Laura Díaz', 'Av 80 #10-55'),
(3, 'FullBike S.A.', 'Andrés Torres', 'Calle 15 #7-99'),
(4, 'MotoRepuestos Andes', 'Sergio Castro', 'Cra 70 #15-30'),
(5, 'PowerBikes Ltda', 'Valentina Rojas', 'Calle 45 #10-22'),
(6, 'TecnoMoto S.A.S', 'Felipe Díaz', 'Av 68 #55-70'),
(7, 'SuperBikes Import', 'Andrés Peña', 'Cra 30 #25-16'),
(8, 'RuedaLibre Distribuciones', 'Catalina Gómez', 'Calle 13 #45-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repuesto`
--

CREATE TABLE `repuesto` (
  `id_repuesto` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `repuesto`
--

INSERT INTO `repuesto` (`id_repuesto`, `nombre`, `categoria`, `precio`, `stock`, `id_proveedor`) VALUES
(1, 'Filtro de aceite', 'Motor', 50000.00, 10, 1),
(2, 'Pastillas de freno', 'Frenos', 80000.00, 4, 2),
(3, 'Cadena de transmisión', 'Transmisión', 150000.00, 6, 3),
(4, 'Bujía NGK', 'Encendido', 25000.00, 20, 1),
(5, 'Filtro de aire', 'Motor', 40000.00, 15, 2),
(6, 'Kit de frenos', 'Frenos', 95000.00, 8, 3),
(7, 'Llanta trasera 140/70', 'Llantas', 210000.00, 5, 4),
(8, 'Amortiguador trasero', 'Suspensión', 180000.00, 7, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rol_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rol_id`, `nombre`, `descripcion`) VALUES
(1, 'Administrador', 'Acceso total al sistema, gestión de usuarios y datos'),
(2, 'Empleado', 'Acceso limitado para registrar y consultar información'),
(3, 'Cliente', 'Acceso para consultar y actualizar su propia información');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id_sucursal`, `nombre`, `direccion`, `ciudad`) VALUES
(1, 'Sucursal Norte', 'Calle 100 #25-50', 'BOGOTA'),
(2, 'Sucursal Centro', 'Cra 7 #12-89', 'BOGOTA'),
(3, 'Sucursal Sur', 'Av 30 #45-67', 'BOGOTA'),
(4, 'Sucursal Occidente', 'Calle 80 #45-23', 'QUINDIO'),
(5, 'Sucursal Oriente', 'Av 68 #15-09', 'VILLAVICENCIO'),
(6, 'Sucursal Costa', 'Cra 50 #102-15 ', 'BARRANQUILLA'),
(7, 'Sucursal ANT', 'CALLE 12 #19-54', 'MEDELLIN'),
(8, 'Sucursal Cafetera', 'Calle 9 #22-40 ', 'PEREIRA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testdrive`
--

CREATE TABLE `testdrive` (
  `id_testdrive` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `resultado` varchar(50) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_vehiculo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `contraseña` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nombre`, `correo`, `rol_id`, `contraseña`) VALUES
(1, 'juanperez', 'juan.perez@mail.com', 3, 'K4ys3r#202438+'),
(5, 'Carlos Ramírez', 'carlosramirez@yahoo.com', 3, 'Carlos123#'),
(6, 'Andrés Torres', 'andrestorres@gmail.com', 3, 'Andres123#'),
(7, 'Laura Méndez', 'lauramendez@hotmail.com', 3, 'Laura123#'),
(8, 'Felipe Gómez', 'felipegomez@yahoo.com', 3, 'Felipe123#'),
(9, 'Sofía Ramírez', 'sofiaramirez@gmail.com', 3, 'Sofia123#'),
(10, 'Camilo Herrera', 'camilo.herrera@outlook.com', 3, 'Camilo123#'),
(17, 'Pedro López', 'pedro.lopez@empresa.com', 2, 'Pedro123#'),
(18, 'Ana Torres', 'ana.torres@empresa.com', 2, 'Ana123#'),
(19, 'Luis Martínez', 'luis.martinez@empresa.com', 2, 'Luis123#'),
(20, 'Santiago Ruiz', 'santiago.ruiz@empresa.com', 2, 'Santiago123#'),
(21, 'Mariana Pérez', 'mariana.perez@empresa.com', 2, 'Mariana123#'),
(22, 'David Gómez', 'david.gomez@empresa.com', 2, 'David123#'),
(23, 'Laura Méndez', 'laura.mendez@empresa.com', 2, 'Laura123#'),
(24, 'Camilo Herrera', 'camilo.herrera@empresa.com', 2, 'Camilo123#'),
(63, 'Juan Pérez', 'juanpereeez@gmail.com', 3, 'Juand123#'),
(64, 'María Gómez', 'mariagomeasz@hotmail.com', 3, 'Marias123#'),
(67, 'JuanAdmin', 'juan.admin@example.com', 1, 'admin123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id_vehiculo` int(11) NOT NULL,
  `VIN` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `cilindraje` int(11) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `precio_base` decimal(10,2) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id_vehiculo`, `VIN`, `marca`, `modelo`, `cilindraje`, `anio`, `precio_base`, `id_cliente`) VALUES
(1, 'PYS89D', 'Yamaha', 'FZ25', 250, 2022, 12240000.00, 1),
(2, 'DSH74H', 'Honda', 'CB190R', 190, 2021, 10500000.00, 2),
(3, 'QBW85C', 'Suzuki', 'Gixxer 150', 155, 2023, 9975000.00, 3),
(16, 'VIN002345678', 'KTM', 'Duke 200', 200, 2023, 16275000.00, 14),
(17, 'VIN003456789', 'TVS', 'Apache 160 4V', 160, 2022, 11730000.00, 15),
(18, 'VIN005678901', 'Yamaha', 'MT-15', 155, 2024, 17500000.00, 16),
(19, 'VIN006789012', 'Bajaj', 'Dominar 400', 400, 2023, 19425000.00, 17),
(20, 'VIN007890123', 'Hero', 'Hunk 160R', 160, 2021, 9500000.00, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `forma_pago` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_vehiculo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `fecha`, `forma_pago`, `estado`, `id_cliente`, `id_vehiculo`) VALUES
(1, '2025-09-04', 'Efectivo', 'Completada', 1, 1),
(2, '2025-09-04', 'Tarjeta', 'Completada', 2, 2),
(3, '2025-12-24', 'Transferencia', 'Pendiente', 3, 3),
(14, '2024-01-20', 'Efectivo', 'Completada', 14, 16),
(15, '2024-02-10', 'Transferencia', 'Completada', 15, 17),
(16, '2024-03-05', 'Tarjeta', 'Pendiente', 16, 18),
(17, '2024-04-12', 'Efectivo', 'Completada', 17, 19),
(18, '2024-05-18', 'Crédito', 'Completada', 18, 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `documento` (`documento`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `garantia`
--
ALTER TABLE `garantia`
  ADD PRIMARY KEY (`id_garantia`),
  ADD KEY `id_vehiculo` (`id_vehiculo`);

--
-- Indices de la tabla `orden_mantenimiento`
--
ALTER TABLE `orden_mantenimiento`
  ADD PRIMARY KEY (`id_orden`),
  ADD KEY `id_vehiculo` (`id_vehiculo`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `repuesto`
--
ALTER TABLE `repuesto`
  ADD PRIMARY KEY (`id_repuesto`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id_sucursal`);

--
-- Indices de la tabla `testdrive`
--
ALTER TABLE `testdrive`
  ADD PRIMARY KEY (`id_testdrive`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_vehiculo` (`id_vehiculo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `rol_id` (`rol_id`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD UNIQUE KEY `VIN` (`VIN`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_vehiculo` (`id_vehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `garantia`
--
ALTER TABLE `garantia`
  MODIFY `id_garantia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `orden_mantenimiento`
--
ALTER TABLE `orden_mantenimiento`
  MODIFY `id_orden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `repuesto`
--
ALTER TABLE `repuesto`
  MODIFY `id_repuesto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id_sucursal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `testdrive`
--
ALTER TABLE `testdrive`
  MODIFY `id_testdrive` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id_sucursal`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`);

--
-- Filtros para la tabla `garantia`
--
ALTER TABLE `garantia`
  ADD CONSTRAINT `garantia_ibfk_1` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`id_vehiculo`);

--
-- Filtros para la tabla `orden_mantenimiento`
--
ALTER TABLE `orden_mantenimiento`
  ADD CONSTRAINT `orden_mantenimiento_ibfk_1` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`id_vehiculo`),
  ADD CONSTRAINT `orden_mantenimiento_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`);

--
-- Filtros para la tabla `repuesto`
--
ALTER TABLE `repuesto`
  ADD CONSTRAINT `repuesto_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `testdrive`
--
ALTER TABLE `testdrive`
  ADD CONSTRAINT `testdrive_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `testdrive_ibfk_2` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`id_vehiculo`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`rol_id`);

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`id_vehiculo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
