# frozen_string_literal: true

require 'pry'
require_relative '../../../problems/algorithms'

RSpec.describe 'Problems::Algorithms' do
  # subject { self.extend(described_class) }
  let(:algo) { Class.new { extend Problems::Algorithms } }  
  context "under condition" do
    it "behaves like" do
      
      binding.pry
      
    end
  end
end

