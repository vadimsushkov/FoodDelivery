module API
  module V1
    class Users < Grape::API
      format :json
      resources :users do
        get do
          'Hello world'
        end
        desc 'User login',
             entity: API::V1::Entities::Users::Auth,
             http_codes: []
        params do
          requires :email, type: 'String', allow_blank: false
          requires :password, type: 'String', allow_blank: false
        end
        post :login do
          user = User.find_by_email(params[:email])
          #error!({ errors: {email: ["Account is not found"], type:})
        end
      end
    end
  end
end