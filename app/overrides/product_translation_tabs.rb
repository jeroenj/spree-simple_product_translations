Deface::Override.new(
  :virtual_path => "admin/products/_form",
  :name => 'product_translation_tabs',
  :replace => "[data-hook='admin_product_form_left']",
  :partial => "admin/products/product_form_left")