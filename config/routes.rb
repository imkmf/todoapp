Rails.application.routes.draw do
  get '/foo' => 'pages#foo'
  resources :todos do
    collection do
      # Not based on a specific todo

      # /todos/completed
      get '/completed' => 'todos#completed'
    end

    member do
      # Is based on a specific todo
      # /todos/:id/whatever

      post '/complete' => 'todos#complete'
    end
  end
end
