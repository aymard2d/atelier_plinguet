Rails.application.routes.draw do
  #get 'realisations/new'
  #get 'realisations/index'
  #get 'realisations/show'
  #get 'realisations/create'
  #get 'realisations/update'
  #get 'realisations/edit'
  #get 'realisations/delete'

  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #static pages
  get 'atelier', to: 'pages#atelier'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"



  #routes des meubles
  delete "attachments/:id/purge", to: "attachments#purge", as: "purge_attachment"
  
  resources :furnitures do
    #member do
      #delete :delete_photo
    #end
    collection do
      get 'show_by_type/:type', to: 'furnitures#show_by_type', as: 'show_by_type'
    end
  end

  resources :accessories do 
    collection do
      get "show_by_type/:type", to: 'accessories#show_by_type', as: "show_by_type"
    end
  end

  resources :realisations do
    collection do
      get "show_by_type/:type", to: "realisations#show_by_type", as: "show_by_type"
    end
  end

  resources :messages, only: %i[new create]

end
