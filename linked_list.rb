# frozen_string_literal: true

require_relative './node'

class LinkedList
    attr_accessor

    def initialize
        @linked_list = []
    end

    def create_new_node(value)
        @node = Node.new(value)
    end

    def append(value)
        @linked_list.push(create_new_node(value))
        if @linked_list.length > 1
            @linked_list[-2].next_node = @node
        end
    end

    def prepend(value)
        @linked_list.unshift(create_new_node(value))
        if @linked_list.length > 1
            @node.next_node = @linked_list[1]
        end
    end

    def size
        @linked_list.size
    end

    def head
        if @linked_list.empty?
            return "No nodes.."
        else
            @linked_list[0]
        end
    end

    def tail
        if @linked_list.empty?
            print "No nodes.."
        else
            @linked_list[-1]
        end
    end

    def at(index)
        @linked_list[index]
    end

    def pop
        @linked_list.pop
        @linked_list[-1].remove_next_node
    end

    def contains?(value)
        @linked_list.contains?(value)
    end

    def find(value)
        @linked_list.find_index(value)
    end

    # def list_longer_than_one?
    #     @linked_list.size > 1
    # end

    def to_s
        puts_linked_list = ""
        if @linked_list.empty?
            puts_linked_list += "No nodes.."
        else
            @linked_list.each do |node|
                if @linked_list[-1] == node
                    puts_linked_list += "( #{node} || next_node: #{node.next_node} ) -> nil"
                else
                    puts_linked_list += "( #{node} || next_node: #{node.next_node} ) -> "
                end
            end
        end
        puts_linked_list
    end

    def insert_at(value, index)
        @linked_list[index] = create_new_node(value)
        @linked_list.each_with_index do |node, idx|
            node.next_node = @linked_list[idx + 1]
        end
    end

    def remove_at(index)
        @linked_list.delete_at(index)
        @linked_list.each_with_index do |node, idx|
            node.next_node = @linked_list[idx + 1]
        end
    end
end