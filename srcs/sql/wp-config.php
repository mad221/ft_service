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
define( 'DB_HOST', '192.168.99.138:3306' );

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
define( 'AUTH_KEY',         '}fC.vrt&h(Vv}^qQYaSQPQ5kb}J1Ya:lD4y]Y)OxST|qcR{(AA^xCM=-*IpY)W@e' );
define( 'SECURE_AUTH_KEY',  '#sp6QcX:-V_r]B9cB1t4FQ}bL3XFUVR}1lphot]7Hh~}`@b/;x0 -E0`]U;lZV)1' );
define( 'LOGGED_IN_KEY',    '|XN[6zRJJ`mUr(Q6,AUSNa4d&w}X3Q4Ge~uR).|qhhmNn#g +[zkdlpd7MV=BT{E' );
define( 'NONCE_KEY',        'aG{*Asfv@G48C*PYd6+7k?p9w65(VNIr5DhronORKebr.K~8>K ~^G$jDK%RbJ*8' );
define( 'AUTH_SALT',        'JxZMqrs3psjo$uc(d3]$`KWEuSYC-j4:g_)6{(<h}/Nz&JxAxL0pB>DA1iWtST[r' );
define( 'SECURE_AUTH_SALT', '5-N|MBq{4]N}k{o`<n<W/[BTRL#FMM)<$#$u8&<-dd*^`S0#y`WXFq.>Hn_xzA}7' );
define( 'LOGGED_IN_SALT',   '4q`2(oGB>Q8wIg>InDp-!VVSJ{vHP;(9*$u(r/YE;1`A@pmf]-fqru2/Xgwq5M/q' );
define( 'NONCE_SALT',       'XPt2t]?Ie~u0R+9oo<yP3cM2yNAg>_fu1NKoucZ,>}RW3/_:>Mb]BYCiJ]7y]Vn/' );

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

