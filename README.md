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

## Fallbacks for empty translations ##

You might want to use fallbacks to the default locale if you haven't entered translations. By default fallbacks will only be loaded if the translation is `nil`. If you're entering translations through the forms, empty translations will be set to an empty string, causing fallbacks to not work. If you want to enable fallbacks for empty translations you can simply set the following configuration in an initializer in your app:

    Spree::Config.set :fallbacks_for_empty_translations => true

# Open issues
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
