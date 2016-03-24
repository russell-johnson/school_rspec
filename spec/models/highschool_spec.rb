require 'rails_helper'
require 'pry'
RSpec.describe Highschool, type: :model do
  describe 'attiributes' do
    it { should respond_to :name }
    it { should respond_to :established }
  end

  describe 'sorts by' do
    it 'name' do
      highschool1 = Highschool.create(name: 'lonepeak')
      highschool2 = Highschool.create(name: 'american fork')
      highschool3 = Highschool.create(name: 'lehi')
      highschool = Highschool.by_name
      expect(highschool.first.name).to eq('american fork')
      expect(highschool[1].name).to eq('lehi')
      expect(highschool.last.name).to eq('lonepeak')
    end

    it 'date ascending' do
      highschool1 = Highschool.create(established: 1990)
      highschool2 = Highschool.create(established: 2000)
      highschool3 = Highschool.create(established: 2010)
      highschool = Highschool.by_established
      expect(highschool.first.established).to eq(1990)
      expect(highschool[1].established).to eq(2000)
      expect(highschool.last.established).to eq(2010)
    end
  end

end
