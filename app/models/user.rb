class User < ActiveRecord::Base
    validates :email, presence: true, uniqueness: true, format: {with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/}
    validates :color, presence: true, uniqueness: true
    validates_format_of :color, :with => /#\d{6}/
end
