-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-01-2018 a las 22:33:07
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lugaresturisticos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `lugares_id` int(11) NOT NULL,
  `lugares_nombre` varchar(200) NOT NULL,
  `lugares_descripcion` varchar(500) NOT NULL,
  `lugares_urlimagen` varchar(200) NOT NULL,
  `lugares_regiones_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`lugares_id`, `lugares_nombre`, `lugares_descripcion`, `lugares_urlimagen`, `lugares_regiones_id`) VALUES
(3, 'Gigante de Atacama', 'Gigante de Tarapacá o Geoglifo de Cerro Unita, es una gran figura trazada en el flanco noroeste del cerro Unita, a 15 km del pueblo de Huara, territorio comprendido en el desierto de Atacama. Se supone que la representación corresponde a un chamán o yatiri, aunque también puede corresponder a la deidad andina Tunupa-Tarapacá, que realizó una travesía desde el lago Titicaca hacia el océano Pacífico.', 'img/lugares/gigante_de_atacama.jpg', 2),
(4, 'Parque nacional Volcán Isluga', 'En el altiplano de la Región de Tarapacá, entre volcanes, lagunas y cerros sagrados del pueblo aymara, se encuentra el Parque Nacional Volcán Isluga. Esta área silvestre protegida, creada el 3 de enero de 1967, alberga una de las concentraciones más impresionantes de biodiversidad asociada al ecosistema alto andino, entre ellas, especies de la fauna tales como la tagua andina, suri, vicuñas y tres especies de flamencos que se encuentran en categoría de conservación.', 'img/lugares/parque_nacional_volcan_isluga.jpg', 2),
(1, 'Morro de Arica', 'Arica es una ciudad portuaria del norte de Chile conocida por sus playas ideales para la práctica del surf. Cerca del centro hay un sendero que asciende al morro de Arica, un cerro con amplias vistas donde se encuentra el Museo Histórico y de Armas. La catedral de San Marcos, diseñada por el arquitecto francés Gustave Eiffel en metal y madera, data de 1876. Las altas llanuras de los Andes se elevan al este, donde se halla el Parque Nacional y el lago Chungará.', 'img/lugares/morro_arica.jpg', 1),
(2, 'Parque Nacional Lauca', 'El parque nacional Lauca se enclava en la cordillera de los Andes, en el extremo septentrional de Chile. En el noreste están los volcanes nevados de Pomerape y Parinacota. Cerca de allí se encuentra el extenso lago Chungará y las lagunas de Cotacotaní. Al oeste de las lagunas se ubica el pequeño pueblo de Parinacota, con una iglesia del siglo XVII. Las termas de Jurasi están en el extremo oriental. Entre la variada fauna del parque destacan flamencos, ñandúes, llamas y alpacas.', 'img/lugares/parque_nacional_lauca.jpg', 1),
(5, 'Very Large Telescope', 'El conjunto del Very Large Telescope (VLT) es, hasta el momento, el buque insignia de la astronomía terrestre europea de nuestra era. Es el instrumento óptico más avanzado del mundo. Consta de cuatro Telescopios Unitarios (Unit Telescopes, UTs) con espejo primario de 8,2 metros de diámetro más cuatro Telescopios Auxiliares (Auxiliary Telescopes, ATs) móviles de 1,8 metros de diámetro. Ubicado en el Cerro Paranal.', 'img/lugares/very_large_telescope.jpg', 3),
(6, 'Ruinas de Huanchaca', 'Las ruinas de Huanchaca fueron los cimientos estructurales del establecimiento industrial Playa Blanca de la Compañía Minera de Huanchaca de Bolivia. Esta compañía era dueña de las minas de plata de Pulacayo (a 10 km al noroeste de Uyuni) y Oruro, de donde llegaba el mineral hasta Antofagasta. Comenzó su construcción en 1888, tras el acuerdo pactado entre la Compañía Minera de Huanchaca y la Compañía de Salitres y Ferrocarril de Antofagasta, la empresa cesó en 1902 sus actividades.', 'img/lugares/ruinas_de_huanchaca.jpg', 3),
(7, 'Parque nacional Pan de Azúcar', 'El Parque Nacional Pan de Azúcar es una reserva natural costera dividida entre las regiones áridas de Atacama y Antofagasta en el norte de Chile. Gracias al Mirador, se puede observar todo el paisaje desértico, que alberga una gran variedad de cactus y vida silvestre, como guanacos y zorros. El pueblo pesquero de Caleta Pan de Azúcar es un sitio para hacer esnórquel. Se hacen visitas en bote a la Isla Pan de Azúcar para observar una colonia de pingüinos de Humboldt.', 'img/lugares/parque_nacional_pan_de_azucar.jpg', 4),
(8, 'Bahía Inglesa', 'Bahía Inglesa es un balneario de la costa del Desierto de Atacama en el norte de Chile, conocido por sus playas. Entre ellas, se encuentra la playa La Piscina, una caleta resguardada con formaciones rocosas que encierran aguas claras y tranquilas. La costa ventosa del lado sur hace que las playas Las Machas y Cisne sean sitios populares para realizar deportes acuáticos. Justo al norte del balneario está la ciudad puerto de Caldera, con su Museo Paleontológico.', 'img/lugares/bahia_inglesa.jpg', 4),
(9, 'Vicuña', 'Vicuña limita al norte con la comuna de Alto del Carmen, al oeste con las comunas de La Higuera, La Serena y Andacollo, al este con Argentina y al sur con las comunas de Paihuano y Río Hurtado. Su capital es la ciudad de Vicuña, principal ciudad del Valle del Elqui. La ciudad es conocida como la capital del valle de Elqui y del pisco chileno, además de ser el lugar de nacimiento de la poeta chilena Gabriela Mistral, ganadora del Premio Nobel de Literatura en 1945.', 'img/lugares/vicuna.jpg', 5),
(10, 'La Serena', 'La Serena es la capital de la región de Coquimbo en la costa de Chile. La ciudad es conocida por sus largas playas, como El Faro, con su punto de referencia en el Faro Monumental y su arquitectura colonial y neocolonial. La Iglesia de San Francisco, de finales del renacimiento, es una de las muchas iglesias que dominan el perfil de la ciudad. El Museo Arqueológico exhibe alfarería prehispánica y una cabeza de piedra (moái) gigante de la Isla de Pascua.', 'img/lugares/laserena.jpg', 5),
(11, 'Rapa Nui', 'Patrimonio Mundial declarado por la Unesco, una Isla Mágica que con sus bellos parajes es un regalo para la naturaleza. Rapa Nui se perfila como un destino de Cultura Viva y tradiciones, cuenta con playas privilegiadas óptimas para deportes como el surf y el buceo. Su rica gastronomía se expresa en el característico Atún que es preparado en diversas formas, empanadas, ceviches, y grillado entre otras.', 'img/lugares/rapanui.jpg', 6),
(12, 'Litoral de los Poetas', 'Conocido como el litoral de los poetas, comprende bellos balnearios como El Quisco, Isla Negra, Las Cruces, Cartagena y El Tabo. Sus playas son altamente concurridas en épocas estivales, y se transforman en un destino para visitar todo el año dado su tranquilidad y cercanía con Santiago. La gastronomía de mar se refleja de forma notable en la gran variedad de preparaciones que encontrarás en todos los restaurantes de la zona.', 'img/lugares/litoral_de_los_poetas.jpg', 6),
(13, 'Cerro San Cristóbal', 'Antiguamente Tupahue. Con una altitud de 880 msnm y una prominencia de 280 m, es el segundo punto más alto de la ciudad, solo superado por el cerro Renca. El cerro se encuentra entre las comunas de Providencia y Recoleta, teniendo a sus pies al Barrio Bellavista. Es parte de un conjunto de montañas, junto a los actuales cerros Chacarillas o Tupahue, forman parte del Parque Metropolitano de Santiago, el parque urbano más grande de Chile y uno de los más grandes del mundo.', 'img/lugares/cerro_san_cristobal.jpg', 7),
(14, 'Cajón del Maipo ', 'El Cajón del Maipo es un cañón andino ubicado en la zona suroriental de la Región Metropolitana, Chile. Corresponde a la alta cuenca del río Maipo (sobre 900 msnm), donde es encajonado por cerros, farellones y macizos. La zona además cuenta con una serie de ríos confluentes como el río el Volcán, el Yeso y el Colorado, y otros esteros como el San Gabriel, Manzanito, Coyanco, el Sauce, el Manzano y San José. \r\nLa localidad principal es San José de Maipo.\r\n', 'img/lugares/cajon_del_maipo.jpg', 7),
(15, 'Santa Cruz', 'Santa Cruz es una ciudad del valle de Colchagua, en el centro de Chile. Es conocida por su arquitectura colonial y las bodegas de vino circundantes. Cerca de la Plaza de Armas central, se encuentra el Museo de Colchagua, que exhibe arte precolombino, tejidos andinos y objetos arqueológicos. La Iglesia de Santa Cruz del siglo XIX fue restaurada y se encuentra frente a la plaza. En la plaza, cada año se celebra la Fiesta de la Vendimia en honor a la cosecha de uvas de la región.', 'img/lugares/santa_cruz.jpg', 8),
(16, 'Sewell', 'Sewell fue una ciudad minera chilena, ubicada en la cordillera de los Andes. Actualmente pertenece a la comuna de Machalí, y está emplazada a 150 km al sur de Santiago y a 64 km de la ciudad de Rancagua. Fue declarada Patrimonio de la Humanidad por la Unesco en el año 2006, por su incalculable valor histórico y cultural para Chile y el mundo.', 'img/lugares/sewell.jpg', 8),
(17, 'Parque Nacional 7 Tazas', 'Reserva nacional Radal Siete Tazas, es un área natural protegida ubicada en la Provincia de Curicó, Región del Maule (Chile), distante a 100 km al noreste de Talca , a 75 km al sureste de Curicó, a 55 km al noreste de la localidad de Molina y 275 de la capital nacional, Santiago . Fue creada en 1981 como \"Área de Protección turística\", y el 14 de octubre de 2008 fue declarada Parque nacional. ', 'img/lugares/7tazas.jpg', 9),
(18, 'Reserva Nacional Altos de Lircay', 'Se ubica a 66 Km. al oriente de Talca (capital de la Región del Maule), pasando por la zona huasa y típica de San Clemente, de los cuáles 40 km. son pavimentados y 26 km. de ripio. El tránsito se mantiene todo el año, aunque en invierno éste puede verse dificultado por la nieve en los últimos 4 Km. del trayecto.', 'img/lugares/reserva.jpg', 9),
(19, 'Salto del Itata', 'Situado en la VIII Región,  a 18 km. al oeste de Yungay, este espectacular salto tan poco conocido, tiene una cascada en la cuál el Río Itata cae de 75 mts. de altura por sus acantilados, los cuáles fueron formados por la erosión de la roca, provocada en el transcurso del tiempo por el río,  se puede apreciar su abundante vegetación con arbustos y flores silvestres que rodean el lugar.', 'img/lugares/itata.jpg', 10),
(20, 'Laguna del Huemul', 'Desde Chillan, son 70 kilómetros aprox. hasta llegar al comienzo del Valle de Las Trancas. Una vez ahí seguir el camino principal hasta la Tenencia de Carabineros Las Trancas (km 75 approx) donde es OBLIGACION registrarse antes de realizar cualquier excursión en el sector.', 'img/lugares/huemul.jpg', 10),
(21, 'Volcan Villarica', 'Con sólo mirarlo en el horizonte ya puedes darte por satisfecho. Pero, lo cierto es que este volcán está casi moldeado para aquellos que gustan del trekking y las caminatas al aire libre. En excursiones que salen desde Pucón y Villarrica, podrás ir subiendo a la cima, a la que te demorarás entre cinco y seis horas. Si tienes buenos pulmones, no se te ocurra perdértelo.', 'img/lugares/volcan.jpg', 11),
(22, 'Lican Ray', 'Licán Ray se ubica a 30 km. de Villarrica, a 50 km. de Pucón y a 790 km. de Santiago de Chile. Se puede llegar: En automóvil Si viaja desde el norte, debe recorrer la vía que va de Temuco a Villarrica y sigue hasta Lican Ray. Todo el trayecto se realiza sobre camino pavimentado', 'img/lugares/ray.jpg', 11),
(23, 'Reserva Biologica Huilo Huilo', 'La Reserva Biológica Huilo Huilo es un área natural protegida que se ubica en medio de Los Andes Patagónicos, a 860 km al sur de Santiago de Chile, en la comuna de Panguipulli, en la Región de los Ríos. Limita al este con Argentina. Se caracteriza por la conservación del huemul del sur y de tres nuevos tipos de helechos,2​ además de la protección de la flora y fauna y el cuidado de las comunidades locales.', 'img/lugares/huilo.jpg', 12),
(24, 'Torreon Los Canelos', 'Tras la Batalla de Curalaba de 1598, Valdivia fue destruida por la población huilliche en noviembre de 1599. Tras esto, una expedición holandesa comandada por Hendrick Brouwer se alió con los indígenas huilliches del canal de Chacao en contra de los colonizadores españoles de Chiloé, misma estrategia que utilizaron cuando llegaron a la bahía Corral en 1643, aunque finalmente se retiraron de la zona.', 'img/lugares/torreon.jpg', 12),
(25, 'Isla Grande de Chiloe', 'La isla Grande de Chiloé es la mayor de las islas que integran el archipiélago de Chiloé, un conjunto insular situado en la Región de Los Lagos, en el centro-sur de Chile. Esta isla cuenta con una longitud de 180 kilómetros, de norte a sur, y un ancho promedio de 50 km. Su superficie es de casi 9000 km². Es atravesada de norte a sur por la Cordillera de la Costa, que recibe los nombres locales de cordillera del Piuchén —o de San Pedro— en su parte norte, y de Pirulil, en el sector austral.', 'img/lugares/chiloe.jpg', 13),
(26, 'Saltos de Petrohue', 'Los Saltos del Río Petrohué son cascadas ubicadas a una corta distancia río abajo del lago Todos Los Santos. Se encuentran dentro del Parque nacional Vicente Pérez Rosales cercano a la ruta hacia Petrohué, una localidad al borde de aquel lago. Muchos de los turistas que realizan la ruta entre Puerto Varas y Bariloche en Argentina se detienen en este lugar.', 'img/lugares/petrohue.jpg', 13),
(27, 'Parque Nacional Queulat', 'La unidad Queulat está ubicada en la Región de Aysén del General Carlos Ibáñez del Campo, al sur de Chaitén y a 165 km al norte de Coyhaique. Fue creada el 13 de octubre de 1983, por el DS n.° 640. La unidad destaca por la protección de las especies de fauna como: carpintero negro, cóndor, chucao, el pudú', 'img/lugares/queulat.jpg', 14),
(28, 'Parque Nacional Laguna San Rafael', 'La unidad Laguna San Rafael está ubicada en la Región de Aysén del General Carlos Ibáñez del Campo. Fue creada el 17 de junio de 1959, por el DS n° 475. Destaca por la protección de las especies de fauna, aves como: cisne de cuello negro, chucao y huet huet. Entre los mamíferos está el huemul, guiña', 'img/lugares/sanrafael.jpg', 14),
(29, 'Museo Regional de Magallanes', 'El Museo Regional de Magallanes es un museo chileno ubicado en la ciudad de Punta Arenas, capital de la Región de Magallanes y la Antártica Chilena. A través de sus colecciones se exhibe la historia de la zona de Magallanes y especialmente de la ciudad de Punta Arenas, desde su descubrimiento en el siglo XVI', 'img/lugares/museo.jpg', 15),
(30, 'Parque Nacional Alberto de Agostini', 'La unidad Alberto de Agostini está ubicada en la Región de Magallanes y la Antártica Chilena, se extiende por tres provincias: Magallanes (comuna de Punta Arenas), Tierra del Fuego (comuna de Timaukel) y Antártica Chilena (comuna de Navarino). Fue creada el 22 de enero de 1965.', 'img/lugares/alberto.jpg', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `regi_id` int(11) NOT NULL,
  `regi_nombre` varchar(64) NOT NULL,
  `regi_ordinal` varchar(4) NOT NULL,
  `regi_urlimagen` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`regi_id`, `regi_nombre`, `regi_ordinal`, `regi_urlimagen`) VALUES
(1, 'Arica y Parinacota', 'XV', 'img/region-arica.jpg'),
(2, 'Tarapaca', 'I', 'img/region-tarapaca.jpg'),
(3, 'Antofagasta', 'II', 'img/region-antofagasta.jpg'),
(4, 'Atacama', 'III', 'img/region-atacama.jpg'),
(5, 'Coquimbo', 'IV', 'img/region-coquimbo.jpg'),
(6, 'Valparaiso', 'V', 'img/region_valparaiso.jpg'),
(7, 'Metropolitana', 'RM', 'img/region-metropolitana.jpg'),
(8, 'O Higgins', 'VI', 'img/region-OHiggins.jpg'),
(9, 'Maule', 'VII', 'img/region-maule.jpg'),
(10, 'Biobio', 'VIII', 'img/region-biobio.jpg'),
(11, 'La Araucania', 'IX', 'img/region-araucania.jpg'),
(12, 'Los Rios', 'XIV', 'img/region-delosrios.jpg'),
(13, 'Los Lagos', 'X', 'img/region-deloslagos.jpg'),
(14, 'Aysen', 'XI', 'img/region_aysen.jpg'),
(15, 'Magallanes', 'XII', 'img/region-magallanes.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`lugares_id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`regi_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
  MODIFY `lugares_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `regi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
