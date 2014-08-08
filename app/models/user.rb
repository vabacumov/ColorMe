class User < ActiveRecord::Base
    has_many :splashes
    validates :email, presence: true, uniqueness: true, format: {with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}
    validates :color, presence: true, uniqueness: true
    validates_format_of :color, :with => /#[\d abcdef]{6}/
end
