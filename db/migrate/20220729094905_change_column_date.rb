class ChangeColumnDate < ActiveRecord::Migration[5.2]
  def change
    change_column :api_keys, :activated_at, :datetime
  end
end
