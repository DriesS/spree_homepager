Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :banners do
      collection do
        post :reorder
      end
    end
  end
end