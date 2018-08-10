class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  attr_accessor :first

  def initialize
    @first = nil
  end

  def push(value)
    if @first == nil
      @first = Node.new(value)
    else
      @first.next = Node.new(value)
    end
  end

  def each
    current_node = first
    while current_node != nil
      yield current_node.value
      current_node = current_node.next
    end
  end
end
