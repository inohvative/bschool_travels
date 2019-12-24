require 'rails_helper'

RSpec.describe TravelPersona, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:activities) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
