# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :endpoints do
    namespace :billing do
      namespace :v0 do
        resources :purchases, only: %i[index show]
      end
    end
  end
end
