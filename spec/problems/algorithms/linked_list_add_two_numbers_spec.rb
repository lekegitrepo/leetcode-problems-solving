
require_relative '../../../problems/algorithms/linked_list_add_two_numbers.rb'

RSpec.describe 'Problems::Algorithms' do
  let(:algo) { Class.new { extend Problems::Algorithms } }

  let!(:node_list_one) { Problems::Algorithms::ListNode.populate_from_array([2,4,3]) }

  let!(:node_list_two) { Problems::Algorithms::ListNode.populate_from_array([5,6,4]) }

  describe 'Invalid inputs' do
    context 'when linked_lists contains negative values' do
      let(:list_one) { Problems::Algorithms::ListNode.populate_from_array([-3]) }
      let(:list_two) { Problems::Algorithms::ListNode.populate_from_array([5]) }

      it 'returns nil' do
        expect(algo.add_two_numbers(list_one, list_two)).to be_nil
      end
    end
  end

  describe 'valid inputs' do

    context 'when both linked_lists input value are zeros' do
      let(:list_one) { Problems::Algorithms::ListNode.populate_from_array([0]) }
      let(:list_two) { Problems::Algorithms::ListNode.populate_from_array([0]) }

      it 'returns a node with zero value' do
        expect(algo.add_two_numbers(list_one, list_two).val).to eq 0
      end
    end

    context '' do
    end

    context '' do
    end
  end
end
