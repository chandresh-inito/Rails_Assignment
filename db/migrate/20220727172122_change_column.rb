class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :api_keys, :api_key, :string, :default => SecureRandom.base64.tr('+/=', 'Qrt')
    #Ex:- :default =>''
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
