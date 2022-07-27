class AddBlockStatusToApiKeys < ActiveRecord::Migration[5.2]
  def change
    add_column :api_keys, :block_status, :string
  end
end
