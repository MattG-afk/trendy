class Trendy::CLI
    def call
        system("clear")
        sleep(1)
        puts "Welcome to Trendy gem!"
        sleep(2)
        puts "Please select a number 1-3 to start"  
        puts "1.Trending ", "2.List", "3.Help", "4.Exit"
        input = nil
        until input == "4"
            input = gets.strip
            case input
            when "3"
                puts "This is the help screen when you type a number you will be brought either into the trending screen which will show you the current top Artist and the most popular song for them or a list of the top 100 artists."
            when "2"
                Trends.create
            when "1"    
                puts "Shows the Top trending artist."
            when "exit"
                exit
            end
        end
    end
end