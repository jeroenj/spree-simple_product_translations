Deface::Override.new(:virtual_path => "admin/products/_form",
                     :replace => "[data-hook='admin_product_form_left'], #admin_product_form_left[data-hook]",
                     :partial => "admin/products/product_form_left")