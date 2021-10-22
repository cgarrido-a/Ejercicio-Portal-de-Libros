Rails.application.routes.draw do
  get 'books/available'
  get 'books/reserved'
  get 'books/bought'

  root 'books#available'

  get 'get_book/:book_id', to: 'books#get_book', as: 'get_book'
  get 'change_state_book/:book_id/:new_state', to: 'books#change_state_book', as: 'change_state_book'
  delete 'delete/:book_id', to: 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
