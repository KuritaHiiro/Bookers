Rails.application.routes.draw do
  get '/books' => "books#index",as: 'books'
  post '/books' => "books#create",as: 'create'
  get 'books/:id' => "books#show",as: 'book_show'
  get 'books/:id/edit' => "books#edit",as: 'book_edit'
  patch 'books/:id' => "books#update",as: 'book_update'
  get '/top' => "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
