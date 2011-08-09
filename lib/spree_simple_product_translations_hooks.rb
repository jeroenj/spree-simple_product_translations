Deface::Override.new(
  :virtual_path => "admin/products/_form",
  :name => 'product_translation_tabs',
  :replace => "[data-hook='admin_product_form_left']",
  :partial => "admin/products/product_form_left")
                     
Deface::Override.new(
  :virtual_path => "layouts/admin",
  :name => 'product_translation_js',
  :insert_bottom => "[data-hook='admin_inside_head']",
  :text => %Q[<%= javascript_tag "$(function(){ $('#tabs').tabs(); });" %>])                   