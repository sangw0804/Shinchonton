Rails.application.routes.draw do
  resources :posts
  get 'home/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'posts_ajax/:post_id' => 'posts#ajaxIndex'
end
