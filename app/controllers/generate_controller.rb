class GenerateController < ActionController::Base
    
    def index
    end

    def new
        @api_key = ApiKey.new
    end

    def create
        ApiKey.create(block_status: "NO")
        flash.now[:success] = "New api key has been generated"
        redirect_to  root_path
    end

    def available
           
    end

    def back
        redirect_to root_path
    end
    
    

end
