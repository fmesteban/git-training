class Node
  attr_accessor :value

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  attr_reader :first

  def initialize
    @first = nil
  end
end
