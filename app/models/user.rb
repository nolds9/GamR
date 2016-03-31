class User < ActiveRecord::Base
  has_many :games # NHO: since a user has many games,
  # one feature idea would be to have a "my games" page showing all of a user's associated games

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
