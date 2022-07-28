class GenerateController < ActionController::Base
    
    def index
    end

    def new
        @api_key = ApiKey.new
    end

    def create
        ApiKey.create(block_status: "NO")
        flash.now[:success] = "New Api Key Generated"
        redirect_to  root_path
    end

    def available
        
    end

    def back
        redirect_to root_path
    end

    def keepalive 
        AliveJob.set(wait: 20.seconds).perform_later
    end 
    
    def show

    end

    def destroy
        
        @api_key = ApiKey.where(api_key: params[:api_key])
        
        if @api_key[0].destroy
            flash[:notice] = "Deleted Sucessfully"
        else
            flash[:notice] = "Key Not Found"
        end

    end

    
end
