class Trendy::CLI
    def call
        system("clear")
        sleep(1)
        puts "Welcome to Trendy gem!"
        puts "You can see which Dubstep Musican's song is in the top 100."
        sleep(1)
        puts 'Please select "list" to start or "exit" to exit.'  
        input = nil
        while input == "exit"
            input = gets.strip
            case input
            when "list"
                Trends.clear
                Trends.create
                Trends.list
                
                until input == "exit"
                    input = gets.strip
                    if trends !=nil
                        puts "The rank of #{trends.name} is #{trends.rank}"
                    elsif input == nil && input != "exit"
                        puts "incorrect command please try again."
                    elsif input == "list"
                        Trends.list
                        puts "Which Musician's song would you like to see?"
                    end
                end
            when "exit"
                exit
            end
        end
    end
end