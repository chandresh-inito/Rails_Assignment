class UnblockController < ActionController::Base
    
    def home
    end
    
    def update
        @api_key = ApiKey.find_by(api_key: params[:api_key])
        @api_key.block_status = "NO"
        if @api_key.save
            flash[:notice] = "Api key is Unblock Succesfully"
        else
            flash[:notice] = "Key Not Found"
        end 
    end

    
end