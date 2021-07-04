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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'user' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define('AUTH_KEY',         'k=VXjLtJ9MeYq&yQn8X/5ZI(Le8kXJu;a~:xJvAU&1`pBRwC6B]`sjrs##AZ9K0w');
define('SECURE_AUTH_KEY',  '+@N{uR7#w+>=kL1v,:Db.Wfe:7xQ!]?E4*K~A Oz9IMNmZ#C56JW1fb9Gh{!]c2V');
define('LOGGED_IN_KEY',    'sgX1s4Ox,6Ljt[=x>3q!sgBddEm}z&L8w|Afx#oNX@F&L-AP%:qZesW)9AGL/eF*');
define('NONCE_KEY',        'ybJs+!69kF~%DB8z*^prj*0R$DE2vR0uT/V`lU|G,0;*mU&BPPX|Z(0?4O5@{)$y');
define('AUTH_SALT',        'L>/r3/2W%9L*ti>9VmLh-[bOI8^vG(cNm,/L1|So$dMRUMDrsZ,K?[oUXu$NT)$P');
define('SECURE_AUTH_SALT', 'P;mR-d?cvDhZWTo[^Akk%F4bX@enRL}-;5WG1odT]TL|En~@p23x.lta~/l9Dv>4');
define('LOGGED_IN_SALT',   ';5]d{Xu[6p,z.}m14`TDas:|Ka(WiR8cC9p:K_$V[;JKaV2w>XFJ*Ko^9w`DZ9)&');
define('NONCE_SALT',       'K3r.Ur 6c1Wv XRbGtY-B<iRI,-v1^X*J8{}ql-0hX=H|g_FU`oJQcGS6)<UcYX.');

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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';