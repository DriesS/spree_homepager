class AddLocaleToBanner < ActiveRecord::Migration
  def change
    add_column :spree_banners, :locale, :string
  end
end
