module API
  module V1
    class Users < Grape::API
      format :json
      resources :users do
        get do
          'Hello world'
        end
      end
    end
  end
end