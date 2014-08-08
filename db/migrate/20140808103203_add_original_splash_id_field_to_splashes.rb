class AddOriginalSplashIdFieldToSplashes < ActiveRecord::Migration
  def change
    add_column :splashes, :original_splash_id, :integer
  end
end
