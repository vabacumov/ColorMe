class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :color
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
