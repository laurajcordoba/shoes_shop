class API < Grape::API
  include API::ErrorHandler

  version 'v1', using: :path
  prefix :api
  format :json
  formatter :json, Grape::Formatter::Jbuilder

  helpers do
    def authenticate!
      if env['HTTP_AUTHORIZATION']
        auth_header = env['HTTP_AUTHORIZATION'].split(' ')

        if auth_header[0] == 'Basic' && auth_header[1] != ''
          username, password = Base64.decode64(auth_header[1]).split(':')
          username == 'my_user' && password == 'my_password'
        end
      end
    end
  end

  mount ShoesApi::Stores
  mount ShoesApi::Articles
end
