Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    root to: 'turbases#index'
    resources :countries
    resources :regions
    resources :cities
    resources :turbases

      get 'regions/by_country/:country_id', to: 'regions#by_country'
      get 'cities/by_region/:region_id', to: 'cities#by_region'
      get 'turbases/filter_by_region/:region_id', to: 'turbases#filter_by_region'

end
