class Engineer < ActiveRecord::Base
  has_many :projects
  has_many :artists, through: :projects

  # def self.master_project(project)
  #   puts "Type the Projectyou would like to master"
  #   project_title = get.chomp
  #   if Project.find_by(title: project_title)
  #     project.submitted = true
  #     p "#{project_title} has been mastered."
  #   else
  #     "Please enter valid project"
  #   end
  # end

  def self.register_new_user
    puts "Okay, what would you like your username to be?"
    username = gets.chomp
     if Engineer.find_by(name: username)
       puts "please choose another name"
     else
       Engineer.create(name: username)
     end
  end

  def self.login_a_user
    puts "What is your username?"
    username = gets.chomp

    if Engineer.find_by(name: username)
      Engineer.find_by(name: username)
    else
      puts "This user does not exist, please try again."
    end
  end

end
