movies = {
    "Inception" => 4,
    "Intersteallar" => 4,
    "Lord of the Rings" => 4
}

puts "Choose one please."
puts "*To add a new movie type 'add'!"
puts "*To update a movie type 'update'!"
puts "*To display movies type 'display'!"
puts "*To delete movies type 'delete'!"

choice = gets.chomp

case choice 
when "add"
    puts "Movie Name: "
    title = gets.chomp
    if movies[title.intern].nil?
        puts "Rating (0-5): "
        rating = gets.chomp
        movies[title.intern] = rating.to_i
        puts title + " has been added to the list. Rating: " + rating
    else
        puts "Movie already exists!"
    end
when "update"
    puts "Type the movie name for update"
    title = gets.chomp
    if movies[title].nil?
        puts "Movie is not on the list!"
    else 
        puts "Rating (0-5): "
        rating = gets.chomp
        movies[title.intern] = rating.to_i
    end
when "display"
    movies.each do |title, rating|
        puts "#{title}: #{rating}"
    end
when "delete"
    puts "Type the movie name to delete"
    title = gets.chomp
    if movies[title].nil?
        puts "Movie is not on the list"
    else
        movies.delete(title)
    end
else
    puts "Error!"
end
