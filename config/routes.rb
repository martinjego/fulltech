Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about_us', to: 'home#about_us', as: :about_us
  get 'contact_us', to: 'home#contact_us', as: :contact_us
  root 'home#index'
end
