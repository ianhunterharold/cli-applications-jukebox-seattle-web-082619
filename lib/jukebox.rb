require "pry"
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts"- help : displays this help message"
  puts"- list : displays a list of songs you can play"
  puts"- play : lets you choose a song to play"
  puts"- exit : exits this program"
end 

def list (songs_array)
  songs_array.each_with_index do |song,index|
    #above line could also be written like 
    #songs_array.each_with_index {|song,index| #action to be exectuted}
    puts "#{index + 1}. #{song}"
    index += 1 
  end #end of songs. 
end #end of method 

def play (songs_array)
  puts "Please enter a song name or number:"
  user_input = gets.strip
    if (user_input.to_i > 0 && user_input.to_i <= songs_array.length)
        puts "Playing #{songs_array[user_input.to_i - 1]}"
    elsif(songs_array.include?(user_input))
        puts "Playing #{user_input}"
    else 
        puts "Invalid input, please try again"
        # else "Invalid input, please try again"
    end  #if 
end  #end of play method 


def exit_jukebox
  puts "Goodbye"
end 

def run 
  help
 
    while user_input != "exit"
    #do nothing
     puts "Please enter a command:"
  user_input = gets.strip
   
    
  if user_input == "exit"
    return exit_jukebox
    
  elsif user_input =="help"
    return help 
    
  elsif user_input == "list"
    return list(songs_array)
    
  elsif user_input == "play"
    return play(songs_array)
  else 
    puts "Please enter a command:"
    
    end 
  end  #end of ifs 
end #end of method 


#then run using bin/jukebox 