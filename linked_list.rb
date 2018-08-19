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

  def push(value)
    node = Node.new(value)
    unless @first
      @first = node
    else
      @first.next = node
    end
  end

  def pop
    return unless @first
    prev = @first
    current = prev.next

    unless current
      val = @first.value
      @first = nil
    end

    while current.next
      prev = current
      current = current.next
      val = current.value
    end

    prev.next = nil
    return val
  end
end
