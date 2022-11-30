class LinkedList

  def initialize()
    @head = nil
    puts 'Linked list has no nodes! Use listed methods in README to start using linked-lists!'
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
    self
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
    self
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
    list_size
  end
  
  def head
    puts "First Node data: #{@head.data}"
    @head
  end

  def tail
    current_node = @head
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
    puts "Last Node data: #{current_node.data}"
    current_node
  end

  def at(index)
    if index == 0
      puts "Node at index of #{index} is 0"
      @head
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
        current_node
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
    self
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
    if index > self.size
      puts "Error. Index = #{index} which is larger than list size equal to #{self.size}. Enter smaller index than list size."
    elsif index < 0
      puts "Error. Please enter index > 0"
    else
      new_node = Node.new
      new_node.data = value
      current_node_at_index = self.at(index)
      previous_node = self.at(index - 1)
      if current_node_at_index.next_node == nil
        self.push(value)
      elsif index.zero?
        self.prepend(value)
      else
        previous_node.next_node = new_node
        new_node.next_node = current_node_at_index
      end
      self.to_s
    end
  end

  def remove_at(index)
    if index > self.size
      puts "Error. Index = #{index} which is larger than list size equal to #{self.size}. Enter smaller index than list size."
    elsif index < 0
      puts "Error. Please enter index > 0"
    elsif index.zero?
      @head = self.at(1)
      self
    else
      previous_node = self.at(index - 1)
      node_ahead = self.at(index + 1)
      previous_node.next_node = node_ahead
      self
    end
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
# Tests:
# list.push("I'm last...")
# list.prepend("I'm first!")
# list.insert_at("Now I am First!", 0)
# list.insert_at("Check Check", 1)
# list.remove_at(1)
# list.remove_at(0)