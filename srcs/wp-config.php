<?php
/**
 * Configuración básica de WordPress.
 *
 * Este archivo contiene las siguientes configuraciones: ajustes de MySQL, prefijo de tablas,
 * claves secretas, idioma de WordPress y ABSPATH. Para obtener más información,
 * visita la página del Codex{@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} . Los ajustes de MySQL te los proporcionará tu proveedor de alojamiento web.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** Ajustes de MySQL. Solicita estos datos a tu proveedor de alojamiento web. ** //
/** El nombre de tu base de datos de WordPress */
define( 'DB_NAME', 'wordpress' );

/** Tu nombre de usuario de MySQL */
define( 'DB_USER', 'alex414' );

/** Tu contraseña de MySQL */
define( 'DB_PASSWORD', 'alex414' );

/** Host de MySQL (es muy probable que no necesites cambiarlo) */
define( 'DB_HOST', 'localhost' );

/** Codificación de caracteres para la base de datos. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Cotejamiento de la base de datos. No lo modifiques si tienes dudas. */
define('DB_COLLATE', '');

/**#@+
 * Claves únicas de autentificación.
 *
 * Define cada clave secreta con una frase aleatoria distinta.
 * Puedes generarlas usando el {@link https://api.wordpress.org/secret-key/1.1/salt/ servicio de claves secretas de WordPress}
 * Puedes cambiar las claves en cualquier momento para invalidar todas las cookies existentes. Esto forzará a todos los usuarios a volver a hacer login.
 *
 * @since 2.6.0
 */
	define('AUTH_KEY',         'g+u{.G XO]?)Lr@3Kw48%P$eLs;(8^wNX|7jJ%YJVHst~+O/H7Q9rsO )YH#usFP');
	define('SECURE_AUTH_KEY',  '4PQvM~k;sIJ|[6@|_@prqN>Qkh3@aM8oMuiqF,&Ec^^AC/y [+:d *h%)0&Ta?RW');
	define('LOGGED_IN_KEY',    '?j@ZX]9}8nUcb>C~&pwI.#YlyjZr.[H$:Ir:;nN5!K<?-e,X=V@}F&,-2h]$Hkf8');
	define('NONCE_KEY',        't(lb|eK7SMS)aWJ!2hHj_$TDiL?c?6Ac?}H5hOQ<<*fF^52G_>@WRj0=8FJsZl@#');
	define('AUTH_SALT',        'zM39V7(EtR|7W$+6FSA,,]?e33>|$9Lx?,}wIz/f7v/<I5v1#54F2QNcMV/d~W<u');
	define('SECURE_AUTH_SALT', 'CRm=ry6ABw(.HA*iSB@+3~-vAMgdX|njo/ /FWt3zlR*i^6MZgF)-S0Ws?A@d5-a');
	define('LOGGED_IN_SALT',   'G1>J(e5;tw5,jZdi@Z+@e-g4V| H7Nuy4Vj[O?TH/,!Q|<.xEQ#.(a%Oo+0# v^o');
	define('NONCE_SALT',       'NVooK9|&>+q[C^a3bd|6n8?2abl6On:A |4BZoc.V?|`N27R`Fs*wO`BkbCd#JJo');

/**#@-*/

/**
 * Prefijo de la base de datos de WordPress.
 *
 * Cambia el prefijo si deseas instalar multiples blogs en una sola base de datos.
 * Emplea solo números, letras y guión bajo.
 */
$table_prefix = 'wp_';


/**
 * Para desarrolladores: modo debug de WordPress.
 *
 * Cambia esto a true para activar la muestra de avisos durante el desarrollo.
 * Se recomienda encarecidamente a los desarrolladores de temas y plugins que usen WP_DEBUG
 * en sus entornos de desarrollo.
 */
define('WP_DEBUG', false);

/* ¡Eso es todo, deja de editar! Feliz blogging */

/** WordPress absolute path to the Wordpress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
