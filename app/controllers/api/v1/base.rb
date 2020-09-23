module API
  module V1
    class Base < Grape::API
      version %w[v1]
      mount API::V1::Users
      def self.swagger_documentation_params
        {
        #                            doc_version: 'v1',
        #                            hide_documentation_path: true,
        #                            hide_format: true,
        ##                            base_path: '/api',
        #                           target_class: API::V1::Base,
        #                         models: [
        #                         ]
                               }
      end

      add_swagger_documentation(API::V1::Base.swagger_documentation_params)
    end


  end
end