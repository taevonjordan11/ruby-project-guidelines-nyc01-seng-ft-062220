class CLI
  def self.greet
    puts "                        Hello. Welcome To The

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

  end
  def self.run
    CLI.greet

      while true
        # puts "\nmain menu".upcase.magenta
        puts "\nType 'help' to see the list of available commands. Type 'quit' to exit.".magenta
        print "Enter command: ".cyan
        input = gets.chomp

        break if input == "quit" || input == "exit"

        case input
        when "help"
          CLI.help
        when "submit project"
          CLI.submit_project
        when "list projects"
          CLI.list_projects
        when "list artists"
          CLI.list_artists
        when "list engineers"
          CLI.list_engineers
        else
          puts "\n  invalid command, type 'help' to see a list of available commands"
        end
      end
  end

  def self.list_projects
    Project.all.each_with_index { |project,i| puts (i+1).to_s.bold + ".\t#{project.title}" }
  end
  def self.list_artists
    Artist.all.each_with_index { |artist,i| puts (i+1).to_s.bold + ".\t#{artist.name}" }
  end
  def self.list_engineers
    Engineer.all.each_with_index { |engineer,i| puts (i+1).to_s.bold + ".\t#{engineer.name + engineer.credentials}" }
  end

  def self.help
  puts "Help".bold
  puts "  help\t\t\t:show this help menu".green
  puts "List".bold
  puts "  list projects\t\t:list all projects".green
  puts "  list artists\t\t:list all artists".green
  puts "  list engineers\t:list all engineers with their credentials".green
  puts "Quit".bold
  puts "  quit\t\t\t:quit the program".green
  puts "  exit\t\t\t:alias for quit".green
  end

  def self.submit_project(project)
    project = gets.chomp
  if project == project
    project.submitted = true
  else
    "Please enter valid project"
  end
end

  # def self.run
  #   CLI.greet
  #   puts "Please enter your name..."
  #   user_name = gets.chomp
  #   puts "Welcome Back #{user_name}. Enter the title of a project you would like to work on today"
  #   project_name = gets.chomp
  #   Project.find_by(title: project_name)
  #   puts "You chose #{project_name}. What would you like to do with that project?"
  #   b = gets.chomp
  # end
end
