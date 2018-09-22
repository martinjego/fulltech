Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about_us', to: 'home#about_us', as: :about_us
  get 'contact_us', to: 'home#contact_us', as: :contact_us
  get 'product_list', to: 'home#product_list', as: :product_list
  get 'product', to: 'home#product', as: :product
  post 'contact_email', to: 'home#contact_email'

  # Headers
  get 'comfortable_and_environmental', to: 'home#comfortable_and_environmental', as: :comfortable_and_environmental
  get 'product_advantages', to: 'home#product_advantages', as: :product_advantages
  get 'hanma_engine', to: 'home#hanma_engine', as: :hanma_engine
  get 'go_global', to: 'home#go_global', as: :go_global
  get 'product_opacity', to: 'home#product_opacity', as: :product_opacity
  get 'play_an_important_role', to: 'home#play_an_important_role', as: :play_an_important_role

  root 'home#index'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
