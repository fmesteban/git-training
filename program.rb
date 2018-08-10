require './linked_list.rb'

list = LinkedList.new
list.push(5)
list.push(2)
list.push(3)
list.iterate { |v| p v }
