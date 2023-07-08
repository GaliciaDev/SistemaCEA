-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-07-2023 a las 15:40:40
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sagadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo`
--

CREATE TABLE `administrativo` (
  `Matricula` int(6) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido_P` varchar(30) DEFAULT NULL,
  `Apellido_M` varchar(30) DEFAULT NULL,
  `Horario_Adm` time NOT NULL,
  `Telefono_Emergencia` int(10) DEFAULT NULL,
  `Edad` int(2) DEFAULT NULL,
  `Genero` varchar(10) DEFAULT NULL,
  `Fecha_Nac` date DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Telefono_Particular` int(10) DEFAULT NULL,
  `Cargo` varchar(20) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Area` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Matricula` int(6) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido_P` varchar(30) DEFAULT NULL,
  `Apellido_M` varchar(30) DEFAULT NULL,
  `Fecha_Nac` date DEFAULT NULL,
  `Edad` int(2) DEFAULT NULL,
  `Genero` varchar(10) DEFAULT NULL,
  `Direccion` varchar(30) DEFAULT NULL,
  `Tutor` varchar(50) DEFAULT NULL,
  `Telefono_Tutor` int(10) DEFAULT NULL,
  `Correo` varchar(40) DEFAULT NULL,
  `Grado` varchar(10) DEFAULT NULL,
  `Turno` varchar(15) DEFAULT NULL,
  `Materias` varchar(50) DEFAULT NULL,
  `Docente` varchar(50) DEFAULT NULL,
  `Horario_A` time DEFAULT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `Materias` varchar(30) DEFAULT NULL,
  `Calificacion` float DEFAULT NULL,
  `Promedio_Materias` float DEFAULT NULL,
  `Promedio_General` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `Matricula` int(6) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido_P` varchar(30) DEFAULT NULL,
  `Apellido_M` varchar(30) DEFAULT NULL,
  `Edad` int(2) DEFAULT NULL,
  `Genero` varchar(10) DEFAULT NULL,
  `Dirreccion` varchar(30) DEFAULT NULL,
  `Telefono_Particular` int(10) DEFAULT NULL,
  `Cargo` varchar(30) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Area` varchar(15) DEFAULT NULL,
  `Fecha_Nac` date DEFAULT NULL,
  `Telefono_Emergencia` int(10) DEFAULT NULL,
  `Horario_D` time DEFAULT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `Turno` varchar(15) NOT NULL,
  `Horario_A` time DEFAULT NULL,
  `Horario_D` time DEFAULT NULL,
  `Horario_Adm` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `Matricula` int(6) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrativo`
--
ALTER TABLE `administrativo`
  ADD PRIMARY KEY (`Matricula`,`Horario_Adm`);

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Matricula`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`Matricula`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`Turno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
