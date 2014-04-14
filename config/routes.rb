UnfoundSounds::Application.routes.draw do

  resources :logins
  resources :writers

  get "/" => 'pages#home', :as => :home
  get "/week/:id" => 'pages#week', :as => :week
  get "/album/:url" => 'pages#album', :as => :view_album
  
  get "/add" => 'pages#add', :as => :add_album
  get "/album/:url/edit" => 'pages#edit', :as => :edit_album
  
  get "/discover" => 'pages#discover'
  get "/donate" => 'pages#donate'
  
  post "/album" => 'pages#save_album', :as => :save_album
  post "/album/:url/edit" => 'pages#edit_album', :as => :update_album
  post "/album/:url/found" => 'pages#found_album', :as => :found_album
  post "/album/:url/unfound" => 'pages#unfound_album', :as => :unfound_album
  post "/album/:url/delete" => 'pages#delete', :as => :delete_album
  
end