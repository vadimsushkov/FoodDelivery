module API
  module V1
    class Users < Grape::API
      #format :json
      #include AbstractController::Rendering
      resources :users do
        get do
          User.all
        end
        desc 'User login' do
          #http_codes [{ }]
        end

        params do
          requires :email, type: String, allow_blank: false
          requires :password, type: String, allow_blank: false
        end
        post :login do
          user = User.find_by_email(params[:email])
          API::V1::Entities::Users::Auth.represent(user)
        end

        params do
          requires :token, type: String, allow_blank: false
        end
        post :authorization do
          user = User.find_by_token(params[:token])
          if user.present?

          else
            #ErrorsHandler.code_404
          end
          #failure [[404, 'Account is not found', ApiError, { 'application/json' => { code: 404, message: 'Account is not found' } }]]
          #error!({ errors: {email: ["Account is not found"], type:})
        end
      end
    end
  end
end