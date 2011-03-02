require 'spree_core'
require 'spree_product_translations'

require 'spree_simple_product_translations_hooks'
require 'batch_translation'

module SpreeSimpleProductTranslations
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end

      ::Product.send :include, Models::Product
    end

    config.to_prepare &method(:activate).to_proc
  end
end
