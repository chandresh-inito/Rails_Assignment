class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.generator
    SecureRandom.base64.tr('+/=', 'Qrt')
  end
  
end
