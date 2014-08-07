class CreateSplashes < ActiveRecord::Migration
  def change
    create_table :splashes do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
