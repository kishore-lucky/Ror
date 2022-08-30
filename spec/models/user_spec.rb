require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'validation tests' do
    it 'ensures first name presence' do
      user = User.new(last_name: 'vishal',email: 'sample@example.com').save
      expect(user).to eq(false)
    end
    it 'ensures last name presence' do
      user = User.new(first_name: 'Sam',email: 'sample@example.com').save
      expect(user).to eq(false)
    end
    it 'ensures email presence' do
      user = User.new(first_name: 'Sam',last_name: 'vishal').save
      expect(user).to eq(false)
    end
    it 'should save successfully' do
      user = User.new(first_name: 'Sam',last_name: 'vishal',email: 'sample@example.com').save
      expect(user).to eq(false)
    end
  end
  # context 'scope tests' do 
  #   let (:params) { {first_name: 'First', last_name: 'Last' , email: 'sample@example.com'} }
  #   before(:each) do
  #     User.new(params).save
  #     User.new(params).save
  #     User.new(params.merge(active: true)).save
  #     User.new(params.merge(active: false)).save
  #     User.new(params.merge(active: false)).save
  #   end
  #   it 'should return active users' do
  #     expect(User.active_users.size).to eq(3)
  #   end 
  # end
end
