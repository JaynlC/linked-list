class LinkedList

  def initialize()
    @head = nil
    @tail = nil # and always will be nil
    puts 'Linked list has no nodes! Use push(value), or listed methods in README to start using linked-lists!'
  end

  def push(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current_node = @head
      until current_node.next_node == @tail
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      old_head = @head
      @head = new_node
      @head.next_node = old_head
    end
  end

  def size
    list_size = 0
    if @head.nil?
      puts "Size is #{list_size}"
    else
      list_size = 1
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
        list_size += 1
      end
      puts "Size is #{list_size}"
    end
  end
  
  def head
    #resume here
  end
end

class Node
  attr_accessor :data, :next_node

  def initialize(data = nil, next_node = nil)
    @data = data
    @next_node = next_node #make this equal to whatever next node is.
  end  
end

list = LinkedList.new
list.push(2)
list.prepend(1)
