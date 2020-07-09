class CLI
  attr_accessor :artist, :engineer, :prompt
  def initialize()
    @prompt = TTY::Prompt.new
  end

  def greeting
        puts "                          Hello. Welcome To The

        ███╗   ███╗ █████╗ ███████╗████████╗███████╗██████╗ ██╗███╗   ██╗ ██████╗
    ████╗ ████║██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔══██╗██║████╗  ██║██╔════╝
    ██╔████╔██║███████║███████╗   ██║   █████╗  ██████╔╝██║██╔██╗ ██║██║  ███╗
    ██║╚██╔╝██║██╔══██║╚════██║   ██║   ██╔══╝  ██╔══██╗██║██║╚██╗██║██║   ██║
    ██║ ╚═╝ ██║██║  ██║███████║   ██║   ███████╗██║  ██║██║██║ ╚████║╚██████╔╝
    ╚═╝     ╚═╝╚═██████╗██╗═══╝ ██╗███████╗███╗╝╚═██╗████████╗  ╚═══╝ ╚═════╝
                ██╔════╝██║     ██║██╔════╝████╗  ██║╚══██╔══╝
                ██║     ██║     ██║█████╗  ██╔██╗ ██║   ██║
                ██║     ██║     ██║██╔══╝  ██║╚██╗██║   ██║
                ╚██████╗███████╗██║███████╗██║ ╚████║   ██║
                 ╚═════╝╚══════╝╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝
                                                                              ".magenta
    puts "                              created by. Taevon Jordan".yellow
    sleep 2

    prompt.select("What Would You Like To Do?") do |menu|
      menu.choice "Make A New Account", -> {Artist.register_new_user}
      # menu.choice "Register as Engineer", -> {Engineer.register_new_user}
      menu.choice "Login", -> {Artist.login_a_user}
      # menu.choice "Login Engineer", -> {Engineer.login_a_user}
      # menu.choice "quit", -> {self.goodbye}
    end
  end

  def main_menu
    system "clear"
    self.artist.reload
    puts "Great. You are #{self.artist.name}."
    prompt.select("Please make a choice from the list below.") do |menu|
      # menu.choice "List all projects", -> {self.list_all_projects}
      menu.choice "Create Project", -> {self.create_project}
      menu.choice "View my projects", -> {self.my_projects}
      menu.choice "View my engineers", -> {self.my_engineers}
      menu.choice "How many projects do i have?", -> {self.num_of_projects}
      menu.choice "Update Artist Name.", -> {self.new_name}

      # menu.choice "List all artists", -> {self.list_all_artists}

      # menu.choice "Master Project", -> {self.master_project}
      menu.choice "quit", -> {self.done}
    end
  end

  def new_name
    puts "Okay. Lets update your name."
    new = gets.chomp
    self.artist.update(name: new)
    self.main_menu
  end

  def list_all_projects
    Project.all.each_with_index { |project,i| puts (i+1).to_s.bold + ".\t#{project.title}.\t - By #{project.artist.name}.\t  - Engineered by #{project.engineer.name}" }
    self.main_menu
  end



  def my_projects
    self.artist.projects.each do |project|
      puts project.title
    end
    sleep 4
    self.main_menu
  end

  def my_engineers
    self.artist.engineers.each do |engineer|
      puts "#{engineer.name}.\t #{engineer.credentials}"
    end
    sleep 4
    self.main_menu
  end

  def num_of_projects
    num = []
    self.artist.projects.each do |project|
      num << project.title
    end
    puts 'YOUR TOTAL'
    puts num.count
    sleep 4
    self.main_menu
  end
  # def list_all_artists
  #   Artist.all.each_with_index { |artist,i| puts (i+1).to_s.bold + ".\t#{artist.name}" }
  #   self.main_menu
  # end


# NEEDS SOME DEBUGGING 
  def create_project
    # puts "To start, enter your stage name.".yellow
    # stage_name = gets.chomp
    puts "Okay. Whats the name of your project?".yellow
    project_name = gets.chomp
    puts "Is the project Mastered? type 'true' or 'false'".yellow
    bool = gets.chomp
    puts " Okay, and lastly, What is your potential release date?".yellow
    release = gets.chomp
    Project.create(title: project_name, submitted: bool, release_date: release)
    self.main_menu
  end

  # def master_project
  #   puts "Type the Project you would like to master."
  #   project_title = gets.chomp
  #   if Project.find_by(title: project_title)
  #     Project.find_by(title: project_title)
  #      print "#{project_title} has been mastered."
  #   else
  #     puts "Please enter valid project."
  #   end
  #   self.main_menu
  # end

  def done
    puts "goodbye <333"
  end
end
