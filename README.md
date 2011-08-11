# Spree Extension: Simple Product Translations
This extension allows you to translate product details on an intuitive way based on tabs.
Currently it will load tabs for all locales in `I18n.available_locales`.

# Installation
In your Gemfile you just add:

    gem 'spree_simple_product_translations'

Then install the gem:

    bundle install

Then copy the migrations and assets to your spree application:

    rake spree_product_translations:install
    rake spree_simple_product_translations:install

Finally migrate your database:

    rake db:migrate

If you have pre-existing data, you'll need to run this rake task:

    rake spree:extensions:product_translations:globalize_legacy_data

# Open issues
## Globalize3
In the current version of [Globalize3](https://github.com/svenfuchs/globalize3) there is an issue with fallbacks. When you add new translations in the forms, but leave some of them blank, they won't fall back to the default locale. This is because [Globalize3](https://github.com/svenfuchs/globalize3) only loads fallbacks when the values are nil. Because of the way Rails handles these attributes, they will be stored as blank strings into the database.

If you are using the fallbacks, you can enable them by using the latest master from [Globalize3](https://github.com/svenfuchs/globalize3) and [fallbacks branch of spree-product_translations](https://github.com/jeroenj/spree-product_translations/commits/fallbacks). In order to do so you'll need to at this in your Gemfile:

    gem 'spree_product_translations', :git => 'git://github.com/jeroenj/spree-product_translations.git', :branch => 'fallbacks'
    gem 'globalize3', :git => 'git://github.com/svenfuchs/globalize3.git', :ref => 'a6d2d5f084d54e7593e600df7cd6c9be49bdff68'

As soon as [Globalize3](https://github.com/svenfuchs/globalize3) pushes out a new update, I'll update the installation method (and this extension).

## Empty forms (properties & taxons)
Spree is using symbols instead of objects to define `form_for`'s for properties and taxons. This causes the forms to be empty. This can be fixed by overriding both edit pages with the changes found in [this pull request](https://github.com/spree/spree/pull/326).

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
