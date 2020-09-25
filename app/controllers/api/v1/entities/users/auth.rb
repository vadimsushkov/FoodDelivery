module API
  module V1
    module Entities
      module Users
        class Auth < Grape::Entity
          expose :id, as: :user_id, documentation: {type: "Integer"}
          expose :token, documentation: {type: "String"}

        end
      end
    end
  end
end