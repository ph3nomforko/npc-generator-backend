Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :occupations do
        resources :npcs
      end
    end
  end
end
