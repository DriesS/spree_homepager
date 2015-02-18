module Spree
  module Admin
    class BannersController < ResourceController

    def reorder

      params[:banner].each_with_index do |id, index|
        Banner.where(:id => id).update_all(["position = ?", index+1])
      end

      respond_to do |format|
        format.js  { render :text => 'Ok' }
      end

    end

    end
  end
end

