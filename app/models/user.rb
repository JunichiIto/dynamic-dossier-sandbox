class User < ActiveRecord::Base
  validates :name, :email, :birthday, :annual_income, presence: true
  validates :name, :email, uniqueness: true
end
