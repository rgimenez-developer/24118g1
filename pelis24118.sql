-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2024 a las 21:04:27
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pelis24118`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` varchar(50) NOT NULL,
  `email` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `dni`, `email`) VALUES
(1, 'Syman', 'Amdohr', '90-561-5224', 'samdohr0@google.nl'),
(2, 'Rois', 'Bohin', '39-699-2405', 'rbohin1@deviantart.com'),
(3, 'Ricard', 'Gath', '58-260-1673', 'rgath2@phoca.cz'),
(4, 'Wilbert', 'Jenne', '72-728-9546', 'wjenne3@skyrock.com'),
(5, 'Sutton', 'Chadburn', '58-539-5958', 'schadburn4@sitemeter.com'),
(6, 'Palm', 'Thurlbeck', '91-984-0991', 'pthurlbeck5@apple.com'),
(7, 'Allie', 'Figin', '53-788-4758', 'afigin6@umich.edu'),
(8, 'Jean', 'Rehn', '04-438-8316', 'jrehn7@alexa.com'),
(9, 'Simmonds', 'Lafaye', '42-144-5098', 'slafaye8@huffingtonpost.com'),
(10, 'Angel', 'Blatchford', '09-862-0704', 'ablatchford9@omniture.com'),
(11, 'Gibbie', 'Freeman', '15-928-6205', 'gfreemana@liveinternet.ru'),
(12, 'Heywood', 'Vankeev', '34-784-3905', 'hvankeevb@walmart.com'),
(13, 'Issy', 'Blagbrough', '43-852-9426', 'iblagbroughc@moonfruit.com'),
(14, 'Roxane', 'Gwillim', '30-734-6990', 'rgwillimd@mapquest.com'),
(15, 'Carena', 'Mulvihill', '71-012-5967', 'cmulvihille@printfriendly.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnosmaterias`
--

CREATE TABLE `alumnosmaterias` (
  `idAlumno` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL,
  `fechaAlta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnosmaterias`
--

INSERT INTO `alumnosmaterias` (`idAlumno`, `idMateria`, `fechaAlta`) VALUES
(1, 2, NULL),
(1, 3, NULL),
(2, 5, NULL),
(3, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dni` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `email`, `dni`) VALUES
(1, 'Juan', 'Perez', 'jperez@gmail.com', 22555666),
(2, 'Liz', 'Henry', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `idProfesor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `idProfesor`) VALUES
(1, 'Química', 3),
(2, 'Matemática', 1),
(3, 'Informática', 1),
(4, 'Literatura', 5),
(5, 'leyes', 4),
(6, 'Química 2', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `anio` date DEFAULT NULL,
  `puntuacion` float DEFAULT NULL,
  `portada` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `anio`, `puntuacion`, `portada`) VALUES
(1, 'Dune', '1994-09-24', 8.2, 'https://www.themoviedb.org/t/p/w220_and_h330_face//9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg'),
(2, 'The Godfather', '1994-09-24', 8.694, 'https://www.themoviedb.org/t/p/w220_and_h330_face//3bhkrj58Vtu7enYsRolD1fZdja1.jpg'),
(8, 'So Fine', '1994-09-24', 5.5, 'http://dummyimage.com/179x100.png/5fa2dd/ffffff'),
(9, 'Mobsters', '1994-09-24', 5.5, 'http://dummyimage.com/226x100.png/dddddd/000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `precio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`) VALUES
(1, 'Foil - 4oz Custard Cup', 72),
(2, 'Chef Hat 20cm', 66),
(3, 'Bread - Raisin Walnut Pull', 93),
(4, 'Wine - Redchard Merritt', 18),
(5, 'Tomatoes Tear Drop Yellow', 6),
(6, 'Wine - Prosecco Valdobiaddene', 14),
(7, 'Soap - Pine Sol Floor Cleaner', 66),
(8, 'Oregano - Fresh', 68),
(9, 'Artichokes - Knobless, White', 58),
(10, 'Irish Cream - Baileys', 19),
(11, 'Ice Cream - Strawberry', 75),
(12, 'Sesame Seed Black', 6),
(13, 'Beef - Ground, Extra Lean, Fresh', 99),
(14, 'Flower - Potmums', 42),
(15, 'Chips - Doritos', 46),
(16, 'Chocolate Eclairs', 6),
(17, 'Chocolate Bar - Coffee Crisp', 99),
(18, 'Currants', 60),
(19, 'Jagermeister', 43),
(20, 'Chocolate - Dark', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` int(11) NOT NULL,
  `email` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `nombre`, `apellido`, `dni`, `email`) VALUES
(1, 'Pedro', 'Suarez', 23555666, 'lnunez@gmail.com'),
(2, 'Juanita', 'Nuñez', 223333444, 'lnunez@gmail.com'),
(3, 'Juan', 'Jarosesky', 15666333, 'lnunez@gmail.com'),
(4, 'Bruno', 'Sanchez', 11533333, 'lnunez@gmail.com'),
(5, 'Juan', 'Perez', 14222333, 'lnunez@gmail.com'),
(36, 'Rodolfo', 'Sanchez', 18789654, 'lnunez@gmail.com'),
(39, 'Rodolfo', 'Jarosesky', 23654159, 'lnunez@gmail.com'),
(40, 'Kevin', 'Sanchez', 22444111, 'lnunez@gmail.com'),
(41, 'German', 'Mendez', 22333666, 'lnunez@gmail.com'),
(50, 'Marcos', 'thames', 23555666, 'mm@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usu` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usu`, `pass`) VALUES
(1, 'jperez@gmail.com', '1234'),
(2, 'lsuarez@gmail.com', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `alumnosmaterias`
--
ALTER TABLE `alumnosmaterias`
  ADD PRIMARY KEY (`idAlumno`,`idMateria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dni` (`dni`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProfesor` (`idProfesor`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_titulo` (`titulo`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`idProfesor`) REFERENCES `profesores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
