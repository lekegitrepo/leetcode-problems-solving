# frozen_string_literal: true

module Pro
  module Algorithms
      def can_complete_circuit(gas, cost)
        return -1 if is_input_valid?(gas, cost)
  
        value, index = gas_cost_value(gas, cost)
        current_gas_gauge = value
  
        starting_index = index
  
        gas.each do
          index = index % gas.size
          gas_index = (index+1) % gas.size
          break if gas_index == starting_index
  
          current_gas_gauge = (current_gas_gauge - cost[index]) + gas[gas_index]
  
          return -1 if current_gas_gauge - cost[index] <= 0
  
          index += 1
        end
  
        starting_index
      end
  
      private
  
      def is_input_valid?(gas, cost)
        (gas.empty? || cost.empty?) || gas.size != cost.size
      end
  
      def gas_cost_value(gas, cost)
        gas.each_with_index { |value, index| return [value, index] if value - cost[index] > 0 }
      end
  end
end
