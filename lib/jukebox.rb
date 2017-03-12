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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)

  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"

  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  song_exists = false
  songs.each_with_index do |song, index|
    #puts "INDEX:#{index}"
    if input == song || input == (index+1).to_s
      puts "Playing #{song}"
      song_exists = true
    end
  end
  if !song_exists
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp

  while input!="exit"
    if input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "help"
      help
    end
    puts "Please enter a command:"
    input = gets.chomp
  end
  exit_jukebox
end
#run(songs)
