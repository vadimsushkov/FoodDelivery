Rails.application.routes.draw do
  # For details on the DSL vailable within this file, see https://guides.rubyonrails.org/routing.html
  mount GrapeSwaggerRails::Engine => '/docs'
  mount API::Base => '/api'
end
