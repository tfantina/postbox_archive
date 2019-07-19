Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    get 'letters', to: 'letters#index'
  end

  get '*page',
      to: 'static#index', constraints: ->(req) { !req.xhr? && req.format.html? }
  root 'static#index'
end
