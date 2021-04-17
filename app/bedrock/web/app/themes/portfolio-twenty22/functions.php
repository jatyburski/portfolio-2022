<?php

function register_acf_options_pages() {

    // check function exists
    if ( ! function_exists( 'acf_add_options_page' ) ) {
        return;
    }

    // register options page
    $my_options_page = acf_add_options_page(
        array(
            'page_title' 	=> 'Theme Options',
			'menu_title'	=> 'Theme Options',
			'menu_slug' 	=> 'theme-options',
			'capability'	=> 'edit_posts',
			'redirect'		=> false,
            'show_in_graphql' => true,
        )
    );
}

add_action( 'acf/init', 'register_acf_options_pages' );

register_nav_menu('primary', 'Primary Menu');