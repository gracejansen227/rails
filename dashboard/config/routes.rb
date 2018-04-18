Rails.application.routes.draw do

  #get 'dojos/index' => "dojos#index"

    get "" => "dojos#index"

    get "new" => "dojos#new"

    post "create" => "dojos#create"

    get "back" => "dojos#index"

    get "edit/:id" => "dojos#edit"

    post "change" => "dojos#change"

    get "show/:id" => "dojos#show"

    get "delete/:id" => "dojos#delete"

    resources :dojos do
      resources :students
    end

    get "dojos/:id/students" => "students#index"

    get "dojos/:id/students/new" => "students#new"

    post "dojos/:id/students" => "students#create"

    get "dojos/:id/students/:student_id" => "students#show"

    get "dojos/:id/students/:student_id/edit" => "students#edit"

    patch "dojos/:id/students/:student_id" => "students#update"

    delete "dojos/:id/students/:student_id" => "students#destroy"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'



  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end


  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
