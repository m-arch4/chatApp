class User < ApplicationRecord
  validates :username, presence: true,
   length: { minimum: 4, maximum: 12 },
   uniqueness: { case_sensitive: false }

  has_secure_password
end
