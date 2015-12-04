#Program code used from example in Treehouse's Ruby Course
#Modifications made by Samm Cobiskey, Dec. 2nd, 2015

#Uses a method to create a list
def create_list
  puts "What's the list name? "

  name = gets.chomp
  #The list iteslf is a hash, the items in the list will be an array
  hash = {"name" => name, "items" => Array.new}
  return hash
end

#Uses a method to add items to the list
def add_list_item
  puts "\nWhat's the item called? "
  item_name = gets.chomp

  puts "\nHow much/many? "
  #turns string input into an integer, which will later print as a string
  quantity = gets.chomp.to_i

  hash = {"name" => item_name, "quantity" => quantity}

end

#Uses a method for creating a visual separator in the list (looks nice)
def put_separator(character = "-")
  puts character * 80
end

#Method for printing the list once we've added all the items we want
def print_list(list)
  puts "\tList: #{list["name"]}"
  put_separator()

#Loop for making each item print in a list fashion
  list["items"].each do |item|
    puts "\tItem: " + item["name"] + "\t\t\t" +
         "\tQuantity: " + item["quantity"].to_s
  end
  put_separator()
end

#Calls the create_list method (This is where the user input starts)
list = create_list()

puts "Great! Add some items to your list!:\n"

#Loop for adding items to the list. Loop is broken when the user types "no"
loop do
list["items"].push(add_list_item())
puts "Do you want to add another item? (yes or no)"
answer = gets.chomp.downcase
if answer == "no"
  break
end
end

#Prints list once items have been added and loop is broken
puts "Here's your list:\n"
print_list(list)
