Rails.application.routes.draw do
  post "/users" => "users#create"
  get "/users/:id" => "users#show"

  get "/posts" => "posts#index"
  post "/posts" => "posts#create"
  get "/posts/:id" => "posts#show"
  patch "/posts/:id" => "posts#update"
  delete "/posts/:id" => "posts#destroy"
end
