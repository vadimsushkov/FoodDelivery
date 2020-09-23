#GrapeSwaggerRails.options.url      = '/api/v1/swagger_doc'
#GrapeSwaggerRails.options.app_url  = ''
#GrapeSwaggerRails.options.app_name = 'Delivery API'
#GrapeSwaggerRails.options.api_key_type = 'header'
#GrapeSwaggerRails.options.api_key_name = 'X-Authentication'
GrapeSwaggerRails.options.url      = '/api/v1/swagger_doc'
GrapeSwaggerRails.options.app_url  = ''
GrapeSwaggerRails.options.app_name = 'Api'
GrapeSwaggerRails.options.api_key_type = 'header'
GrapeSwaggerRails.options.api_key_name = 'X-Authentication'

GrapeSwaggerRails.options.before_action do |request|
  unless current_user && current_user.is_admin
    redirect_to request.base_url
  end
end

