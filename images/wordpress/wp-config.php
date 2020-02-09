<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'max' );

/** MySQL database password */
define( 'DB_PASSWORD', '123' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'X eAh5ePHmy_C$&=O<,GfckCfSy@j{a>lJoFc}&;!X54kr:}r9ql,RURVrB|lh1K' );
define( 'SECURE_AUTH_KEY',  '4Gx-S*]QayQdqL8WtSi|QwufYcq@~IfSP=YZj}&CFfHYz*0IzpmD(>2;ozc&/7]Z' );
define( 'LOGGED_IN_KEY',    '{_(%j=km9e({_{~nd4O./:qV7zZOI1&j~pYU!49hq}>gcn4-VVh^H,R8Rc[oGrvS' );
define( 'NONCE_KEY',        ':.>L<r:_gEZ75r^WXy6=I8])gBHI~D`VxjThmi_6^1et~jsvC}.{?I.+eX;e^:iP' );
define( 'AUTH_SALT',        '6aKm]L-5bQ8A,$o?`goq[VS0:%s|+QZjpO1~`^&[[MPjW q.*8jp(TSBja9y]rSP' );
define( 'SECURE_AUTH_SALT', 'gdLB(mRJylCd@Y(H^8^/8!MwuNxob/Hk$[jobzLwej~_}!ZMEu),xX]X7LcAC&)S' );
define( 'LOGGED_IN_SALT',   '|Pple7ymz`irM>Dd]x*SN}Bf8;t?=k9,,}M|U(:5P[6u&U(G|+~8II5[p=dPnc+C' );
define( 'NONCE_SALT',       '3}sfYlU[qZq.q&)]3e4_E~i5BDuy;[O{P `3j)VvNt0k CZ P0Gkj,q.?q!e&pK0' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );

