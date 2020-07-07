class Project < ActiveRecord::Base
  belongs_to :artist
  belongs_to :engineer
end
