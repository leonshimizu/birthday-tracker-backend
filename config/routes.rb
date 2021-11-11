Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "birthdays" => "birthdays#index"
  post "birthdays" => "birthdays#create"
  get "birthdays/:id" => "birthdays#show"
  patch "birthdays/:id" => "birthdays#update"
  delete "birthdays/:id" => "birthdays#destroy"
end
