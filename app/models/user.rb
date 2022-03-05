class User < ApplicationRecord
  validates :username, presence: true, length: {in: 5..20}
  has_secure_password
end