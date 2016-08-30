Rails.application.routes.draw do

#COMPANIES
  #Create
  get '/companies/new' => 'companies#new'
  post '/companies' => 'companies#create'

  #Read
  get '/companies' => 'companies#index'
  get 'companies/:id' => 'companies#show'

  #Update
  get 'companies/:id/edit' => 'companies#edit'
  put 'companies/:id' => 'companies#update'
  patch 'companies/:id' => 'companies#update'
  post 'companies/:id' => 'companies#update'

  #Delete
  delete '/companies/:id/delete' => 'companies#destroy'



#INVESTORS
  #Create
  get '/investors/new' => 'investors#new'
  post '/investors' => 'investors#create'

  #Read
  get '/investors' => 'investors#index'
  get 'investors/:id' => 'investors#show'
end
