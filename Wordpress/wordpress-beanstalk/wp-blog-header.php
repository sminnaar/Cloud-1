<?php
/**
 * Loads the WordPress environment and template.
 *
 * @package WordPress
 */

print "Server ip address is: ".$_SERVER['REMOTE_ADDR'];

if ( !isset($wp_did_header) ) {

	$wp_did_header = true;

	// Load the WordPress library.
	require_once( dirname(__FILE__) . '/wp-load.php' );

	// Set up the WordPress query.
	wp();

	// Load the theme template.
	require_once( ABSPATH . WPINC . '/template-loader.php' );

}
