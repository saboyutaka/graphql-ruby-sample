Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
    get '/graphql/voyager', to: "graphql#voyager"
  end
  post "/graphql", to: "graphql#execute"

  resources :books

  get "up" => "rails/health#show", as: :rails_health_check
end
