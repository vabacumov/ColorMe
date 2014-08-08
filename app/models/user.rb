class User < ActiveRecord::Base
    validates :email, presence: true, uniqueness: true, format: {with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}
    validates :color, presence: true, uniqueness: true
    validates_format_of :color, :with => /#\d{6}/
    validates :password, presence: true
    validates_length_of :password, within: 4..20, too_long: 'Password too long.', too_short: 'Password too short.'
end
