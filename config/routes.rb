Rails.application.routes.draw do
  
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
    root to: 'pages#home'
    get '/residential' => 'pages#home_res'
    get '/commercial' => 'pages#home_cor'
    get '/quotes' => 'pages#home_quote'
    get '/thanks' => 'pages#thanks'
    get '/home' => 'pages#home'
    get '/graphlead' => 'graph#graphlead'
    get '/graphquote' => 'graph#graphquote'
    get '/graphelevator' => 'graph#graphelevator' 
    post '/new_resquote' => 'quote#new_resquote'
    post '/new_comquote' => 'quote#new_comquote'
    post '/new_corpquote' => 'quote#new_corpquote'
    post '/new_hybquote' => 'quote#new_hybquote'
    post '/new_lead' => 'leads#new_lead'

    devise_for :users
  
    
end