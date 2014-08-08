class User < ActiveRecord::Base
  has_many :splashes
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed
  has_many :reverse_relationships, foreign_key: "followed_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
  has_many :followers, through: :reverse_relationships, source: :follower

  validates :email, presence: true, uniqueness: true, format: {with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}
  validates :color, presence: true, uniqueness: true
  validates_format_of :color, :with => /#[\d abcdef]{6}/

  def following?(other_user)
    self.relationships.find_by(followed_id: other_user.id)
  end

  def follow!(other_user)
    self.relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    self.relationships.find_by(followed_id: other_user.id).destroy
  end

end
