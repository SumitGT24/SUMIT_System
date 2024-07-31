<?php
 // By Speed Optimizer by SiteGround

/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'dbwp6mivjrxbus' );

/** Database username */
define( 'DB_USER', 'uwqqhyq9nhgto' );

/** Database password */
define( 'DB_PASSWORD', 'odhgkof39ukz' );

/** Database hostname */
define( 'DB_HOST', '127.0.0.1' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'Pp(.=/P^EU;h0fi%nh=_rqDQa1QSHn8Q}xBO+VW9leHxx@(.5p0wY@ero0;9}Pv2' );
define( 'SECURE_AUTH_KEY',   '/u.ZRv{h`&ZT1P3Y}l.-$<l?hP-es3Vl3t!k]oNV<l8(<[XR;Jldw0]t ejWKcP&' );
define( 'LOGGED_IN_KEY',     ')9!LsJlIUw5liaY]kgf+A6ikC:{8n_r9&H>{VD%lSM2edmsEQwI@C[x) i$Q#bB ' );
define( 'NONCE_KEY',         'c^CjE0ntDnWA]!hgPBW&G&4`dh[^.J^YMf9r-,#,YB,&)HkA;GzIo]X^%v-6.Xc?' );
define( 'AUTH_SALT',         'wK*de1&9),z{]w]aJ] Ko pLq/o937B2ltS(brj:X:<ib2:z5.VIsv,(Uzk}iY&+' );
define( 'SECURE_AUTH_SALT',  '5!ZHMIs;YNO7@<.zt?z`_QqW8^e7}3UveOht,w8x-#7dF6J:x{Nkh<E`67nfq]$z' );
define( 'LOGGED_IN_SALT',    'ML*EE3M2g6AiNcMVi8oUXnXO7}L.#&4w#Cdg<Z97hC#VH#X,DqtJA1l-a%aedziG' );
define( 'NONCE_SALT',        '3VpocqJQva@GUvPxQ{a=4YN3=p14Pglx+d<y@Syv4dc(,}@;>QOn]am{3T7?Y[Of' );
define( 'WP_CACHE_KEY_SALT', '&4h0dkiz^(8rI)jX7A/Th3!<e{@R2W~cy7`Vg:cUeVZ$,mA-w2c6jD&zm5JN[${~' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'uka_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
@include_once('/var/lib/sec/wp-settings-pre.php'); // Added by SiteGround WordPress management system
require_once ABSPATH . 'wp-settings.php';
@include_once('/var/lib/sec/wp-settings.php'); // Added by SiteGround WordPress management system
