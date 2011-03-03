module Models::Property
  def self.included(target)
    target.class_eval do
      accepts_nested_attributes_for :translations
    end
  end
end
