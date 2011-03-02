# Spree Extension: Simple Product Translations
This extension allows you to translate product details on an intuitive way based on tabs.
Currently it will load tabs for all locales in `I18n.available_locales`.

# Installation
In your Gemfile you just add:

    gem 'spree_simple_product_translations'

Then install the gem:

    bundle install

Then copy the assets to your spree application:

    rake spree_product_translations:install
    rake spree_simple_product_translations:install

# To add in future releases
* Tests
* Configuration option for which locales te load
* Better design?

# Patches
Feel free to fork this project and provide with any necesary patches. Tests are welcome too.

Copyright (c) 2011 [Jeroen Jacobs](https://github.com/jeroenj), released under the New BSD License
