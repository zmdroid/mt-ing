Rails.application.routes.draw do

  # ADMIN
  get "admins/dashboard"

  # STATIC
  root "static_pages#home"
  get "home",                  to: "static_pages#home"
  get "about/company_history", to: "static_pages#company_history"
  get "about/machinery",       to: "static_pages#machinery"
  get "about/employees",       to: "static_pages#employees"
  get "products",              to: "static_pages#products"

  # ENQUIRIES
  get "contact",               to: "enquiries#new"
  post "enquiries/create"

  # SEESIONS
  get "login",                 to: "sessions#new"
  post "login",                to: "sessions#create"
  delete "logout",             to: "sessions#destroy"

end
