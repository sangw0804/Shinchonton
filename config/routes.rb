Rails.application.routes.draw do
  resources :posts, except: :new
  get 'posts/new/:lat/:lng' => 'posts#new', as: 'new_post'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm

  get 'posts_ajax/:post_id' => 'posts#ajaxIndex'

  post 'posts/search' => 'posts#search', as: 'search_post'

  root "posts#index"
end
