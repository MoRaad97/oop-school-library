require './person.rb'
require './teacher.rb'
require './student.rb'
require './book.rb'
require './rental.rb'

$books = []
$students = []
$teachers = []
$rentals = []
$people = []



def get_books
  if !$books.empty?
    $books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
  else
    puts 'No Books Was Added'
  end
end

def get_people
  if !$students.empty? || !$teachers.empty?
    $students.each { |student| puts "[Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age}" }
    $teachers.each { |teacher| puts "[Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age}" }
  else
    puts 'no people Was added'
  end
end

def add_student(age, name, parent_permission, classroom)
  $students << Student.new(classroom, age, name, parent_permission)
end

def add_teacher(specialization, age, name)
  $teachers << Teacher.new(specialization, age, name)
end

def add_person
  puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
  input = gets.chomp

  if input == '1'
    print 'age: '
    age = gets.chomp
    print 'name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission_Answer = gets.chomp
    parent_permission = parent_permission_Answer.downcase == 'y'

    add_student(age, name, parent_permission, classroom = 1)

    puts 'Person created successfully'

  elsif input == '2'
    print 'age: '
    age = gets.chomp
    print 'name: '
    name = gets.chomp
    print 'specialization: '
    specialization = gets.chomp
    add_teacher(specialization, age, name)
    puts 'Person created successfully'
  end
end

def add_book
  print 'Title:'
  title = gets.chomp
  print 'Author:'
  author = gets.chomp
  $books << Book.new(title, author)
  puts 'Book created successfully'
end

def book_list
  puts 'Select a book from the following list by number'
  i = 0
  while i < $books.length
    puts "#{i}) Title: #{$books[i].title}, Author: #{$books[i].author}"
    i += 1
  end
end

def people_list
  puts 'Select a person from the following list by number(not id)'
  k = 0
  while k < $people.length
    puts "#{k}) Name: #{$people[k].name}, ID: #{$people[k].id}, Age: #{$people[k].age}"
    k += 1
  end
end

def add_rental
  puts ' '
  book_list
  book_number = gets.chomp.to_i
  people_list
  person_number = gets.chomp.to_i
  print 'Date:'
  date = gets.chomp
  person = $people[person_number]
  book = $books[book_number]

  $rentals << Rental.new(date, person, book )
  puts 'Rental created sucessfully'
end

def rental_by_person_id
  print 'ID of person: '
  id = gets.chomp.to_i
  $people.each do |person|
    puts "this is working #{person.id}"
    if person.id.to_i == id 
      puts $rentals.each do |rental| 
        puts "#{rental.person.id.to_i}"
        if rental.person.id.to_i == id
        puts " Date: #{rental.date}, title: #{rental.book.title}, Author: # #{rental.book.author}" 

      end
    end
    else 
    puts "No ID Found With Number : #{id}"
    end
  end
end
