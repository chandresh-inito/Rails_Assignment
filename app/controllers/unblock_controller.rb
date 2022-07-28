class UnblockController < ActionController::Base
    
    def home
    end
    
    def update
        @api_key = ApiKey.where(api_key: params[:api_key])
        @api_key[0].block_status = "NO"
        if @api_key[0].save
            flash[:notice] = "Api key is Unblock Succesfully"
        else
            flash[:notice] = "Key Not Found"
        end 
    end

    
end