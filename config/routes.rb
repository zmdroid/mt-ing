Rails.application.routes.draw do
  root 'static_pages#home'
  get 'home',     to: "static_pages#home"
  get 'about',    to: "static_pages#about"
  get 'products', to: "static_pages#products"
  get 'contact',  to: "static_pages#contact"
end
