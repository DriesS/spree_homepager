Spree::PermittedAttributes.class_eval do
  ATTRIBUTES.push(:banner_attributes)

  @@banner_attributes = [:tagline, :target_url, :visible, :place, :position, :image, :name, :body]
end