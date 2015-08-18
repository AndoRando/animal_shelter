require('rspec')
require('customer')


describe(Customer) do
  describe('#name') do
    it('returns the name of a customer') do
      test_customer = Customer.new({:name => 'jim', :phone => '1234567899', :animal_pref => 'dog', :breed_pref => 'labrador'})
      expect(test_customer.name()).to(eq('jim'))
    end
  end

  describe('#phone') do
    it('returns the phone number of a customer') do
      test_customer = Customer.new({:name => 'jim', :phone => '1234567899', :animal_pref => 'dog', :breed_pref => 'labrador'})
      expect(test_customer.phone()).to(eq('1234567899'))
    end
  end

  describe('#animal_pref') do
    it('returns the animal preference of a customer') do
      test_customer = Customer.new({:name => 'jim', :phone => '1234567899', :animal_pref => 'dog', :breed_pref => 'labrador'})
      expect(test_customer.animal_pref()).to(eq('dog'))
    end
  end

  describe('#breed_pref') do
    it('returns the breed preference of a customer') do
      test_customer = Customer.new({:name => 'jim', :phone => '1234567899', :animal_pref => 'dog', :breed_pref => 'labrador'})
      expect(test_customer.breed_pref).to(eq('labrador'))
    end
  end
end
