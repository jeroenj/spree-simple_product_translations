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

# Open issues
In the current version of [Globalize3](https://github.com/svenfuchs/globalize3) there is an issue with fallbacks. When you add new translations in the forms, but leave some of them blank, they won't fall back to the default locale. This is because [Globalize3](https://github.com/svenfuchs/globalize3) only loads fallbacks when the values are nil. Because of the way Rails handles these attributes, they will be stored as blank strings into the database.

If you are using the fallbacks, you might want to use [my fork](https://github.com/jeroenj/globalize3) of [Globalize3](https://github.com/svenfuchs/globalize3) in your Gemfile until it gets merged into [Globalize3](https://github.com/svenfuchs/globalize3)'s [master branch](https://github.com/svenfuchs/globalize3):

    gem 'globalize3', :git => 'git://github.com/jeroenj/globalize3.git'

For those interested, you can follow [the pull request here](https://github.com/svenfuchs/globalize3/pull/32).

# To add in future releases
* Add form to:
   + Prototype
   + Taxonomy
* Tests
* Configuration option for which locales te load
* Better design?

# Patches
Feel free to fork this project and provide with any necesary patches. Tests are welcome too.

Copyright (c) 2011 [Jeroen Jacobs](https://github.com/jeroenj), released under the New BSD License
