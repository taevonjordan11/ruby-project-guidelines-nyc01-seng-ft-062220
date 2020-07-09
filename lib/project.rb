class Project < ActiveRecord::Base
  belongs_to :artist
  belongs_to :engineer

  def self.delete
    puts "Whats the title of the project you would like to delete?"
    t = gets.chomp
    if Project.find_by(title: t)
      Project.find_by(title: t).destroy
    end
    puts "you have deleted your project."
  end
end
