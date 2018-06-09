require 'colorize'
class Music
attr_accessor :song, :artist
def initialize(song, artist)
@song = song
@artist = artist
end 
end
class Quiz
@@music_library = []

def self.add_song(song)
@@music_library << song
end

def self.quiz_song(song)
puts "Who sings the song #{song.song}?"
answer = gets.chomp.downcase

if answer == song.artist 
	puts "Wow, you know your stuff!".green
	puts ""
  else 
	puts "Too bad! #{song.artist} is the singer of #{song.song}".red
	puts ""
end
end

def self.start_quiz
@@music_library.each do |song|
break
self.quiz_song(song)
end

puts "Quiz completed!".cyan

end
end

Quiz.add_song(Music.new("Psycho", "post malone"))
Quiz.add_song(Music.new("No Tears Left To Cry", "ariana grande"))
Quiz.add_song(Music.new("The Middle", "zedd"))
Quiz.add_song(Music.new("Love Lies", "khalid"))
Quiz.add_song(Music.new("Best Song Ever", "one direction"))
Quiz.add_song(Music.new("Nobody’s Perfect", "hannah montana"))

Quiz.quiz_song(Music.new("Psycho", "post malone"))
Quiz.quiz_song(Music.new("No Tears Left To Cry", "ariana grande"))
Quiz.quiz_song(Music.new("The Middle", "zedd"))
Quiz.quiz_song(Music.new("Love Lies", "khalid"))
Quiz.quiz_song(Music.new("Best Song Ever", "one direction"))
Quiz.quiz_song(Music.new("Nobody’s Perfect", "hannah montana"))


Quiz.start_quiz
