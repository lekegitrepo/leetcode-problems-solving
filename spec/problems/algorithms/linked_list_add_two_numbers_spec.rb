
require_relative '../../../problems/algorithms/linked_list_add_two_numbers.rb'

RSpec.describe 'Problems::Algorithms' do
  let(:algo) { Class.new { extend Problems::Algorithms } }

  let!(:node_list_one) do
  end

  let!(:node_list_two) do
  end

  describe 'Invalid inputs' do
    context 'when linked_lists are negative values' do
      it 'returns nil' do
        expect(algo.add_two_numbers(node_list_one, node_list_two)).to be_nil
      end
    end
  end

  describe 'valid inputs' do
    context 'when both linked_lists input values are zero' do
    end

    context '' do
    end

    context '' do
    end
  end
end
