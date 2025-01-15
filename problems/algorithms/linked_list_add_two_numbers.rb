
module Problems
  module Algorithms
    class ListNode
      attr_accessor :val, :next

      def initialize(val, next_node = nil)
        @val = val
        @next = next_node
      end

      def self.populate_from_array(array)
        return nil if array.empty?

        head = ListNode.new(array[0])

        array[1..].each { head.insert_node(head, _1)}

        head
      end

      def insert_node(node, value)
        if node.nil?
          return ListNode.new(value) 
        elsif node.next.nil?
          node.next = ListNode.new(value)
        else
          insert_node(node.next, value)
        end
      end
    end

    def add_two_numbers(l1, l2)
      reminder = 0

      head = nil
      current_node = nil

      while l1 || l2
        return nil if l1&.val&.negative? || l2&.val&.negative?

        reminder, value = calculate_node_value(l1&.val, l2&.val, reminder)
        if head.nil?
          head = Problems::Algorithms::ListNode.new(value)
          current_node = head
        else
          current_node.next = Problems::Algorithms::ListNode.new(value)
          current_node = current_node.next
        end
        l1, l2 = l1&.next, l2&.next
      end

      current_node.next = Problems::Algorithms::ListNode.new(reminder) if reminder > 0

      head
    end

    private

    def calculate_node_value(l1_val, l2_val, reminder)
      value = l1_val.to_i + l2_val.to_i + reminder

      return [0, value] if value < 10

      [1, value%10]
    end
  end
end

include Problems::Algorithms
# obj = Object.new
# obj.extend(Problems::Algorithms)

arr1 = [2,4,3]
arr2 = [5,6,4]

linked_list_one = ::ListNode.populate_from_array(arr1)
linked_list_two = ::ListNode.populate_from_array(arr2)

p add_two_numbers(linked_list_one, linked_list_two)

arr1 = [9,9,9,9,9,9,9]
arr2 = [9,9,9,9]


linked_list_one = ::ListNode.populate_from_array(arr1)
linked_list_two = ::ListNode.populate_from_array(arr2)

p add_two_numbers(linked_list_one, linked_list_two)

linked_list_one = ::ListNode.populate_from_array([0])
linked_list_two = ::ListNode.populate_from_array([0])

p add_two_numbers(linked_list_one, linked_list_two)
