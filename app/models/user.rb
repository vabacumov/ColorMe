class User < ActiveRecord::Base
    validates :email, prescence: true, uniqueness: true
    validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
    validates :color, prescence: true, uniqueness: true
    validates_format_of :color, :with => /^#\d{6}/
    validates :password, prescence: true
    validates_length_of :password, within: 4..20, too_long: 'Password too long.', too_short: 'Password too short.'
end
