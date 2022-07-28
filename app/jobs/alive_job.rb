class AliveJob < ApplicationJob
  queue_as :default

    def perform(*args)
        
        # @api_key = ApiKey.find(17)
        # @api_key.destroy

        if ApiKey.find(21) then
          @api_key = ApiKey.find(18)
          @api_key.destroy
          flash.now[:sucess] = "Deleted Successfully"
        elsif flash.now[:error] = "Key Not Found"
        end 

    end
end
