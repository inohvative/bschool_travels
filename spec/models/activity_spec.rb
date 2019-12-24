require 'rails_helper'

RSpec.describe Activity, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:travel_preferences) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
