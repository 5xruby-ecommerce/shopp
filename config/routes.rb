Rails.application.routes.draw do
<<<<<<< HEAD
  resources :products

  resources :cart, only:[:show, :destroy]do
    collection do
      post :add, path:'add/:id'
    end
  end
=======
  resources :users
>>>>>>> d8d4c43f3faf7a469c82daee224dc0ce61576b2f
end
