require_relative '../config/environment'


cli_inst = CLI.new

logged_in_user= cli_inst.greeting()

until !logged_in_user.nil?
  sleep 2
  userchoice = cli_inst.greeting()
end

cli_inst.artist = logged_in_user

cli_inst.main_menu


# binding.pry
0



# CLI.run

# class CLI
#   def self.greet
#     puts "                        Hello. Welcome To The
#
#     ███╗   ███╗ █████╗ ███████╗████████╗███████╗██████╗ ██╗███╗   ██╗ ██████╗
# ████╗ ████║██╔══██╗██╔════╝╚══██╔══╝██╔════╝██╔══██╗██║████╗  ██║██╔════╝
# ██╔████╔██║███████║███████╗   ██║   █████╗  ██████╔╝██║██╔██╗ ██║██║  ███╗
# ██║╚██╔╝██║██╔══██║╚════██║   ██║   ██╔══╝  ██╔══██╗██║██║╚██╗██║██║   ██║
# ██║ ╚═╝ ██║██║  ██║███████║   ██║   ███████╗██║  ██║██║██║ ╚████║╚██████╔╝
# ╚═╝     ╚═╝╚═██████╗██╗═══╝ ██╗███████╗███╗╝╚═██╗████████╗  ╚═══╝ ╚═════╝
#             ██╔════╝██║     ██║██╔════╝████╗  ██║╚══██╔══╝
#             ██║     ██║     ██║█████╗  ██╔██╗ ██║   ██║
#             ██║     ██║     ██║██╔══╝  ██║╚██╗██║   ██║
#             ╚██████╗███████╗██║███████╗██║ ╚████║   ██║
#              ╚═════╝╚══════╝╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝
#                                                                           ".magenta
#
#   end
#   def self.run
#     CLI.greet
#     attr_accessor :user, :prompt
#     def initialize()
#       @prompt = TTY::Prompt.new
#       # @user = user
#     end
#       while true
#         # puts "\nmain menu".upcase.magenta
#         puts "\nType 'help' to see the list of available commands. Type 'quit' to exit.".magenta
#         print "Enter command: ".cyan
#         input = gets.chomp
#
#         break if input == "quit" || input == "exit"
#
#         case input
#         when "help"
#           CLI.help
#         when "submit project"
#           CLI.submit_project
#         when "list projects"
#           CLI.list_projects
#         when "list artists"
#           CLI.list_artists
#         when "list engineers"
#           CLI.list_engineers
#         when "login"
#           CLI.login
#         else
#           puts "\n invalid command, to see a list of available commands type 'help' "
#         end
#       end
#   end
#
#   def self.list_projects
#     Project.all.each_with_index { |project,i| puts (i+1).to_s.bold + ".\t#{project.title}" }
#   end
#   def self.list_artists
#     Artist.all.each_with_index { |artist,i| puts (i+1).to_s.bold + ".\t#{artist.name}" }
#   end
#   def self.list_engineers
#     Engineer.all.each_with_index { |engineer,i| puts (i+1).to_s.bold + ".\t#{engineer.name + engineer.credentials}" }
#   end
#
#   # def self.login
#   #
#   # end
#
#   def self.help
#   puts "Help".bold
#   puts "  help\t\t\t:show this help menu".green
#   puts "Login".bold
#   puts "  login \t\t:login with your credentials".green
#   puts "List".bold
#   puts "  list projects\t\t:list all projects".green
#   puts "  list artists\t\t:list all artists".green
#   puts "  list engineers\t:list all engineers with their credentials".green
#   puts "Quit".bold
#   puts "  quit\t\t\t:quit the program"
#   puts "  exit\t\t\t:alias for quit"
#   end
#
#   def self.submit_project(project)
#     project = gets.chomp
#   if project == project
#     project.submitted = true
#   else
#     "Please enter valid project"
#   end
# end
#
# end
