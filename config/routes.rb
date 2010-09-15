Refinery::Application.routes.draw do
  resources :events

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :events do
      collection do
        post :update_positions
      end
    end
  end
end
