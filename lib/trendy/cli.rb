class Trendy::CLI
    def call
        system("clear")
        sleep(1)
        puts "Welcome to Trendy gem!"
        puts "You can see which Dubstep Musican's song is in the top 100."
        sleep(2)
        puts 'Please select "list" to start or "exit" to exit.'  
        input = nil
        until input == "exit"
            input = gets.strip
            case input
            when "list"
                Trends.create
                Trends.list
                puts "Which Musician's song would you like to see?"
                input = gets.strip
                Trends.find_by_name(input)
            when "exit"
                exit
            end
        end
    end
end