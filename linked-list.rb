class LinkedList

  def initialize()
    @head = nil
    puts 'Linked list has no nodes! Use push(value), or listed methods in README to start using linked-lists!'
  end

  def push(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current_node = @head
      until current_node.next_node == nil
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
    puts "First Node data: #{@head.data}"
  end

  def tail
    current_node = @head
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
    puts "Last Node data: #{current_node.data}"
  end

  def at(index)
    if index == 0
      puts "Node at index of #{index} is 0"
    else
      current_node = @head
      node_count = 0
      until current_node.next_node == nil
        current_node = current_node.next_node
        node_count += 1
        break if node_count == index
      end
      if index > node_count
        puts "Input Index argument of #{index} is greater than number of nodes (#{node_count}) in list."
      else
        puts "Node at index of #{index} is: #{current_node.data}"
      end
    end
  end

  def pop
    current_node = @head
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
    p current_node
    current_node.next_node = nil
    self #checkmethod
  end

  def contains?(value)
    check = false
    if @head.data == value
      check = true
    else
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
        if current_node.data == value
          check = true
          break
        end
      end
    end
    check
  end

  def find(value)
    if !self.contains?(value)
      nil
      puts "Value does not exist in list."
    elsif @head.data == value
      "#{value} is at index: 0"
    else
      current_node = @head
      index = 0
      until current_node.next_node == nil
        current_node = current_node.next_node
        index += 1
        if current_node.data == value then break end
      end
      return "#{value} is at index: #{index}"
    end
  end

  def to_s
    value = @head.data
    str = "(#{value}) -> "
    current_node = @head
    until current_node.next_node == nil
      current_node = current_node.next_node
      value = current_node.data
      str += "(#{value}) -> "
    end
    str += " nil"
    str
  end

  def insert_at(value, index)
    # resume here
  end
end

class Node
  attr_accessor :data, :next_node

  def initialize(data = nil, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

list = LinkedList.new
list.push(2)
list.prepend(1)