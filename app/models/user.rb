class User < ApplicationRecord
  validates :username, presence: true, uniqueness:true, length: {minimum: 3, maximum: 15}
  has_secure_password
end


User.create(username: "Cristian", password: "password")
User.create(username: "Fernando", password: "password")
User.create(username: "Jesus", password: "password")
User.create(username: "David", password: "password")
User.create(username: "Oscar", password: "password")
