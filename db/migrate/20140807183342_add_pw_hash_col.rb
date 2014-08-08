class AddPwHashCol < ActiveRecord::Migration
  def change
    add_column :users, :pw_hash, :string
  end
end

