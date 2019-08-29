Rails.application.routes.draw do
   root :to => 'welcome#index'

   resources :about do
  end
end
