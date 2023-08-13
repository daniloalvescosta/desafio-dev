# frozen_string_literal: true

Rails.application.routes.draw do
  root 'cnab#index'
  post 'import', to: 'cnab#import'
  delete 'destroy', to: 'cnab#destroy'
end
