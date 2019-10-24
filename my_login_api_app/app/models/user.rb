class User < ApplicationRecord
  # Rails Validation method : Makes sure the following values are provided in the specified fields
  validates_presence_of :name, :email, :password_digest
  validates :email, uniqueness: true

  # encrypt password
  has_secure_password
end
