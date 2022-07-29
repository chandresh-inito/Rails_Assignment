class GenerateController < ActionController::Base
    
    def index
    end

    def new
        @api_key = ApiKey.new
    end

    def create
        ApiKey.create(block_status: "NO", activated_at: Time.now )
        flash.now[:success] = "New Api Key Generated"
        redirect_to  root_path
    end

    def available
        @api_key = ApiKey.find_by(block_status: "NO")
        
        if @api_key.nil? 
            flash.now[:error] = "Error 404"
        elsif 
            @api_key.block_status = "YES"
            @api_key.save
            flash.now[:success] = @api_key.api_key 
        end

    end

    def back
        redirect_to root_path
    end


    def keepalive 
        AliveJob.perform_later
    end 
    
    
    def show

    end

    def destroy
        
        @api_key = ApiKey.find_by(api_key: params[:api_key])
        
        if @api_key.destroy
            flash.now[:notice] = "Deleted Sucessfully"
        else
            flash.now[:notice] = "Key Not Found"
        end

    end

    def showactivate 
    end

    def activate
        @api_key = ApiKey.find_by(api_key: params[:api_key])
        @api_key.activated_at = Time.now
        @api_key.save
    end


end
