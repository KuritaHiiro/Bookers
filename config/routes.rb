Rails.application.routes.draw do
  root 'homes#top'
  get '/books' => "books#index",as: 'books'
  post '/books' => "books#create",as: 'create'
  get 'books/:id' => "books#show",as: 'book_show'
  get 'books/:id/edit' => "books#edit",as: 'book_edit'
  patch 'books/:id' => "books#update",as: 'book_update'
  delete 'books/:id' => "books#destroy",as: 'book_destroy'
  get '/top' => "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
