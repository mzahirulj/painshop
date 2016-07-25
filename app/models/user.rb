class User < ApplicationRecord
  validates_presence_of :name, :email ,:password1, :password2
  validates_confirmation_of :password1 , :password2
end
