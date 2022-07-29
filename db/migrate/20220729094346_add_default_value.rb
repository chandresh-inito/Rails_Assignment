class AddDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column :api_keys, :activated_at, :datetime, :default => Time.now
    #Ex:- :default =>''
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
    #Ex:- :default =>''
  end
end
