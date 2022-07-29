class AddColumnActivatedAt < ActiveRecord::Migration[5.2]
  def change
    add_column  :api_keys, :activated_at, :datetime
    #Ex:- :default =>''
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
