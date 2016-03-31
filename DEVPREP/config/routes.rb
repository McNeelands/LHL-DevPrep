Rails.application.routes.draw do
  default_url_options :host => "example.com"
  root 'sessions#new'
  get '/html' => 'prep_courses#html'
  get '/javascript' => 'prep_courses#javascript'
  get '/git' => 'prep_courses#git'
  get '/ruby' => 'prep_courses#ruby'
  get '/intro'=> 'prep_courses#intro'
  get '/submit' => 'prep_courses#submit'
  get 'users/:id/posts' => 'users#posts', :as => :user_posts
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash
  post '/posts' => 'posts#create'
  get '/signup'=> 'users#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

  resources :posts do
    resources :comments, only: [:create]
  end

  resources :prep_courses, only: [:index]
  resources :users
  resources :likes, only: [:create, :destroy]










end
