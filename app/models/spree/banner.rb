module Spree
  class Banner < ActiveRecord::Base

    acts_as_list
    has_attached_file :image,
      :styles => {:thumb => "100x100>" },
      :default_style => :original,
      :url => '/spree/banners/:id/:style/:basename.:extension',
      :path => ':rails_root/public/spree/banners/:id/:style/:basename.:extension'

    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    default_scope { order(:position) }

    scope :visible, -> { where(:visible => true) }
    scope :at_place, lambda {|place| visible.where(:place => place) }
    scope :with_locale, lambda {|locale| where(:locale => locale) }
    # Find banner by name

    scope :get_banner, lambda {|name| visible.where(:name => name) }

  end
end
