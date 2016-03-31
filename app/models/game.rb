class Game < ActiveRecord::Base
  belongs_to :user
  # NHO: would recommend adding validations on games to help prevent bad user created data
end
