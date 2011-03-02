class SpreeSimpleProductTranslationsHooks < Spree::ThemeSupport::HookListener
  replace :admin_product_form_left, 'admin/products/product_form_left'
end
