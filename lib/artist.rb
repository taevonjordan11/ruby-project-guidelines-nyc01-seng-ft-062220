class Artist < ActiveRecord::Base
  has_many :projects
  has_many :engineers, through: :projects

  # def create_project(title_ins, engineer)
  #   Project.create(artist: self, title: title_inst, engineer: engineer)
  # end
@art = nil
  def self.register_new_user
    puts "Okay, what would you like your username to be?"
    username = gets.chomp
     if Artist.find_by(name: username)
       puts "please choose another name"
     else
       Artist.create(name: username)
      # p "Welcome to the master client, #{username}!"
     end
  end

  def self.login_a_user
    puts "What is your username?"
    username = gets.chomp

    if Artist.find_by(name: username)
      @art = Artist.find_by(name: username)
    else
      puts "This user does not exist, please try again."
    end
  end


  def remove_engineer(project)
    if project == project
      project.engineer = nil
      "Current Mastering Engineer Removed."
    else
      "Please Enter a VALID project."
    end
  end

  def project_release(project, r_date)
    if project == project
      if project.submitted == true
        project.release_date = r_date
      else
        "Engineer must submit project first."
      end
    end
  end

  def delete_project(project)
    if project == project
      project.destroy
      "Project Deleted."
    else
      "Please Enter a VALID project."
    end
  end

#Not sure How to Loop Back to Main Menu. The Project is Being created.
  def self.create_project

    puts "Okay. Whats the name of your project?".yellow
    project_name = gets.chomp
    puts "Is the project Mastered? type 'true' or 'false'".yellow
    bool = gets.chomp
    puts " Okay, and lastly, What is your potential release date?".yellow
    release = gets.chomp
    Project.create(title: project_name, submitted: bool, release_date: release, artist: @art)
    # CLI.main_menu
  end


end
