# frozen_string_literal: true

require 'pry'
require_relative '../../../problems/algorithms'

RSpec.describe 'Problems::Algorithms' do
  # subject { self.extend(described_class) }
  let(:algo) { Class.new { extend Problems::Algorithms } }  
  describe 'invalid inputs' do
    context 'when inputs are empty arrays' do
      it 'returns -1' do
        expect(algo.can_complete_circuit([], [])).to eq(-1)          
      end
    end
  end

  describe 'valid inputs' do
    context 'when inputs values can complete the circuit: 1' do
      it 'returns 3' do
        expect(algo.can_complete_circuit([1,2,3,4,5], [3,4,5,1,2])).to eq(3)          
      end
    end

    context 'when inputs values can complete the circuit: 2' do
      it 'returns 4' do
        expect(algo.can_complete_circuit([5,1,2,3,4], [4,4,1,5,1])).to eq(4)          
      end
    end

    context 'when inputs values can not complete the circuit' do
      it 'returns -1' do
        expect(algo.can_complete_circuit([2,3,4], [3,4,3])).to eq(-1)          
      end
    end
  end
end

