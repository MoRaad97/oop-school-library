# main file
require './app.rb'

def main 
puts " "
puts "welcome to School Library App!"
puts " "
puts " "
puts "Please choose an option by enterin a number:"
puts " "
  puts "1 - List all books."
  puts "2 - List all people."
  puts "3 - Create a person (teacher or student, not a plain Person)."
  puts "4 - Create a book."
  puts "5 - Create a rental."
  puts "6 - List all rentals for a given person id."
  puts "7 - Exit"

  service_num = gets.chomp

  while service_num
 if service_num == '1'
   get_books()
 elsif service_num == '2'
   get_people()
 elsif service_num == '3'
 add_person()
 elsif service_num == '4'
   add_book()
 elsif service_num == '5'
  add_rental() 
 elsif service_num == '6'
  rental_by_person_id()
 elsif service_num == '7'
break
 else
  puts "Invalid choice. Please enter a number between 1-7."
 end
    service_num = gets.chomp
  end
end

main()