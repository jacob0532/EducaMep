-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-03-2023 a las 06:49:00
-- Versión del servidor: 10.4.20-MariaDB-log
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `467038`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Administrador`
--

CREATE TABLE `Administrador` (
  `cedula` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido1` varchar(45) NOT NULL,
  `apellido2` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Administrador`
--

INSERT INTO `Administrador` (`cedula`, `nombre`, `apellido1`, `apellido2`, `correo`, `password`) VALUES
(123456789, 'Jacob', 'Picado', 'García', 'jacob@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Calificacion`
--

CREATE TABLE `Calificacion` (
  `idCalificacion` int(11) NOT NULL,
  `estudiante` int(11) NOT NULL,
  `docente` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Chat`
--

CREATE TABLE `Chat` (
  `idChat` int(11) NOT NULL,
  `mensaje` varchar(45) NOT NULL,
  `idCurso` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Curso`
--

CREATE TABLE `Curso` (
  `idCurso` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `grado` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Curso`
--

INSERT INTO `Curso` (`idCurso`, `nombre`, `grado`) VALUES
(1, 'Español', 'Noveno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CursosDocente`
--

CREATE TABLE `CursosDocente` (
  `idCursoEst` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `cedula` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `CursosDocente`
--

INSERT INTO `CursosDocente` (`idCursoEst`, `periodo`, `idCurso`, `cedula`) VALUES
(1, 2022, 1, 1212121212);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CursosEstudiantes`
--

CREATE TABLE `CursosEstudiantes` (
  `idCursoEst` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `cedula` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `CursosEstudiantes`
--

INSERT INTO `CursosEstudiantes` (`idCursoEst`, `periodo`, `idCurso`, `cedula`) VALUES
(1, 2022, 1, 1212121213);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Docente`
--

CREATE TABLE `Docente` (
  `cedula` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido1` varchar(45) NOT NULL,
  `apellido2` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `sumCalificacion` int(11) NOT NULL,
  `numCalificaciones` int(11) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Docente`
--

INSERT INTO `Docente` (`cedula`, `nombre`, `apellido1`, `apellido2`, `correo`, `sumCalificacion`, `numCalificaciones`, `password`) VALUES
(1212121212, 'Juan', 'Perez', 'Perez', 'juanperezperez@gmail.com', 0, 0, 'juanpp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Estudiante`
--

CREATE TABLE `Estudiante` (
  `cedula` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido1` varchar(45) NOT NULL,
  `apellido2` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `grado` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Estudiante`
--

INSERT INTO `Estudiante` (`cedula`, `nombre`, `apellido1`, `apellido2`, `correo`, `grado`, `password`) VALUES
(1212121213, 'Pedro', 'Hernández', 'Hernández', 'pedrohernandezhernandez@gmail.com', '9 NOVENO GRADO', 'pedrohh'),
(13131313, 'Jacob', 'Picado', 'García', 'njacob@gmail.com', '1 PRIMER GRADO', '1322');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Horario`
--

CREATE TABLE `Horario` (
  `idHorario` int(11) NOT NULL,
  `horaInicio` time NOT NULL,
  `idCurso` int(11) NOT NULL,
  `dia` varchar(10) NOT NULL,
  `horaFinal` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Horario`
--

INSERT INTO `Horario` (`idHorario`, `horaInicio`, `idCurso`, `dia`, `horaFinal`) VALUES
(1, '07:00:00', 1, 'Lunes', '09:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Noticia`
--

CREATE TABLE `Noticia` (
  `idNoticia` int(11) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `texto` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tarea`
--

CREATE TABLE `Tarea` (
  `idTarea` int(11) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `fechaEntrega` date NOT NULL,
  `fechaAsignacion` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Administrador`
--
ALTER TABLE `Administrador`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `Calificacion`
--
ALTER TABLE `Calificacion`
  ADD PRIMARY KEY (`idCalificacion`),
  ADD KEY `Calificacion_fk0` (`estudiante`),
  ADD KEY `Calificacion_fk1` (`docente`),
  ADD KEY `Calificacion_fk2` (`idCurso`);

--
-- Indices de la tabla `Chat`
--
ALTER TABLE `Chat`
  ADD PRIMARY KEY (`idChat`),
  ADD KEY `Chat_fk0` (`idCurso`);

--
-- Indices de la tabla `Curso`
--
ALTER TABLE `Curso`
  ADD PRIMARY KEY (`idCurso`);

--
-- Indices de la tabla `CursosDocente`
--
ALTER TABLE `CursosDocente`
  ADD PRIMARY KEY (`idCursoEst`),
  ADD KEY `CursoDocente_fk0` (`idCurso`),
  ADD KEY `CursoDocente_fk1` (`cedula`);

--
-- Indices de la tabla `CursosEstudiantes`
--
ALTER TABLE `CursosEstudiantes`
  ADD PRIMARY KEY (`idCursoEst`),
  ADD KEY `CursoEstudiantes_fk0` (`idCurso`),
  ADD KEY `CursoEstudiantes_fk1` (`cedula`);

--
-- Indices de la tabla `Docente`
--
ALTER TABLE `Docente`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `Estudiante`
--
ALTER TABLE `Estudiante`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `Horario`
--
ALTER TABLE `Horario`
  ADD PRIMARY KEY (`idHorario`),
  ADD KEY `Horario_fk0` (`idCurso`);

--
-- Indices de la tabla `Noticia`
--
ALTER TABLE `Noticia`
  ADD PRIMARY KEY (`idNoticia`),
  ADD KEY `Noticia_fk0` (`idCurso`);

--
-- Indices de la tabla `Tarea`
--
ALTER TABLE `Tarea`
  ADD PRIMARY KEY (`idTarea`),
  ADD KEY `Tarea_fk0` (`idCurso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Calificacion`
--
ALTER TABLE `Calificacion`
  MODIFY `idCalificacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Chat`
--
ALTER TABLE `Chat`
  MODIFY `idChat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Curso`
--
ALTER TABLE `Curso`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `CursosDocente`
--
ALTER TABLE `CursosDocente`
  MODIFY `idCursoEst` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `CursosEstudiantes`
--
ALTER TABLE `CursosEstudiantes`
  MODIFY `idCursoEst` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Horario`
--
ALTER TABLE `Horario`
  MODIFY `idHorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Noticia`
--
ALTER TABLE `Noticia`
  MODIFY `idNoticia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Tarea`
--
ALTER TABLE `Tarea`
  MODIFY `idTarea` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
