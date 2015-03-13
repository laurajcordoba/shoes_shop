module ErrorHandler
  extend ActiveSupport::Concern

  included do
    before do
      unless authenticate!
        error!({ "error_msg"=>"Not Authorized", "error_code"=>401, "success"=>"false" }, 401)
      end
    end

    rescue_from Grape::Exceptions::ValidationErrors do |e|
      rack_response({ "error_msg"=>"Bad Request", "error_code"=>400, "success"=>"false" }, 400)
    end

    rescue_from ActiveRecord::RecordNotFound do |e|
      rack_response({ "error_msg"=>"Record not Found", "error_code"=> 404, "success"=>"false" }, 404)
    end
  end

end
