/*
 Navicat Premium Data Transfer

 Source Server         : lo
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3307
 Source Schema         : bd_blog

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 24/05/2024 23:57:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NULL DEFAULT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contenido` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, '2024-05-24', 'La inteligencia artificial en la creacion del software', 'La inteligencia artificial (IA) esta revolucionando la creacion de software al automatizar tareas complejas y mejorar la eficiencia del desarrollo. Utilizando tecnicas como el aprendizaje automatico y el procesamiento del lenguaje natural');
INSERT INTO `posts` VALUES (2, '2024-05-23', 'Aplicaciones Moviles: Tendencias y Futuro', 'El desarrollo de aplicaciones moviles sigue evolucionando rapidamente. Las tecnologias emergentes como 5G estÃ¡n permitiendo aplicaciones mÃ¡s rÃ¡pidas y con mayor capacidad de respuesta. Ademas, la inteligencia artificial y el aprendizaje automatico estÃ¡n integrÃ¡ndose en las aplicaciones para ofrecer experiencias personalizadas. La realidad aumentada (AR) y la realidad virtual (VR) estÃ¡n tambien ganando terreno, transformando la forma en que interactuamos con el mundo digital. El futuro de las aplicaciones moviles promete ser emocionante, con innovaciones que continuarÃ¡n mejorando nuestra vida diaria.');
INSERT INTO `posts` VALUES (3, '2024-05-22', 'La Revolucion de la Realidad Virtual', 'La realidad virtual esta en auge. Con avances tecnologicos en visualizacion e interaccion, la RV se esta convirtiendo en una herramienta clave en industrias como la capacitacion y el diseÃÂ±o. ÃÂ¿Que nos depara el futuro de la RV? Descubrelo aqui.');

SET FOREIGN_KEY_CHECKS = 1;
