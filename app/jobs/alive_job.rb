class AliveJob < ApplicationJob
  queue_as :default

    def perform(*args)
      ApiKey.where("created_at < ?", 5.minutes.ago ).destroy_all
    end
end
