class Splash < ActiveRecord::Base
  belongs_to :user

  has_many :resplashes, class_name: "Splash",
    foreign_key: "original_splash_id"
  belongs_to :original_splash, class_name: "Splash",
    foreign_key: "original_splash_id"
end
