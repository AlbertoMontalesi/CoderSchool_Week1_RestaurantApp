Rails.application.routes.draw do

  get 'contact_us' => "home#contact_us"

root "home#index"

end
