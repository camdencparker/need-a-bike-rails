Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
   #User routes
   post "/users" => "users#create"
   get "/users/:id" => "users#show"
   delete "/users/:id" => "users#destroy"
 
   #Listing routes
   get "/listings" => "listings#index"
   post "/listings" => "listings#create"
   get "/listings/:id" => "listings#show"
   patch "/listings/:id" => "listings#update"
   delete "/listings/:id" => "listings#destroy"
 
   #Conversation routes
   get "/conversations" => "conversations#index"
   post "/conversations" => "conversations#create"
   get "/conversations/:id" => "conversations#show"
   delete "/conversations/:id" => "conversations#destroy"
   # destroy method not in current use for MVP
 
   #Message routes
   post "/messages" => "messages#create"
 
   #Authentication
   post "/sessions" => "sessions#create"
 
end
