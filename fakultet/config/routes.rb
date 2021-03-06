Rails.application.routes.draw do
  resources :job_applications
  resources :job_advertisements
match 'active'  => 'sessions#active',  via: :get
match 'timeout' => 'sessions#timeout', via: :get
get 'sessions/new'

  resources :users

  get 'welcome/homepage'
  root 'welcome#homepage'
 # root 'job_application#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get 'login', to:'sessions#new'
  get 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'

  get "about" => "welcome#about", as: :about
  get "blog" => "welcome#blog", as: :blog
  get "contact" => "welcome#contact", as: :contact

end
