require('rspec')
require('animal')


describe(Animal) do
  describe('#name') do
    it('returns the name of an animal') do
      johnny_test = Animal.new({:name => 'johnny', :gender => 'male', :admit_date => 2015-8-15, :type => 'dog', :breed => 'labrador'})
      expect(johnny_test.name()).to(eq('johnny'))
    end
  end

  describe('#gender') do
    it ('returns the gender of an animal') do
      johnny_test = Animal.new({:name => 'johnny', :gender => 'male', :admit_date => 2015-8-15, :type => 'dog', :breed => 'labrador'})
      expect(johnny_test.gender()).to(eq('male'))
    end
  end

  describe('#admit_date') do
    it ('returns the admit date of an animal') do
      johnny_test = Animal.new({:name => 'johnny', :gender => 'male', :admit_date => 2015-8-15, :type => 'dog', :breed => 'labrador'})
      expect(johnny_test.admit_date()).to(eq(2015-8-15))
    end
  end

  describe('#type') do
    it ('returns the type of an animal') do
      johnny_test = Animal.new({:name => 'johnny', :gender => 'male', :admit_date => 2015-8-15, :type => 'dog', :breed => 'labrador'})
      expect(johnny_test.type()).to(eq('dog'))
    end
  end

  describe('#breed') do
    it ('returns the breed of an animal') do
      johnny_test = Animal.new({:name => 'johnny', :gender => 'male', :admit_date => 2015-8-15, :type => 'dog', :breed => 'labrador'})
      expect(johnny_test.breed()).to(eq('labrador'))
    end
  end

  describe('.all') do
    it('returns the initially empty array of animals') do
      expect(Animal.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves animals to a list of all animals') do
      johnny_test = Animal.new({:name => 'johnny', :gender => 'male', :admit_date => 2015-8-15, :type => 'dog', :breed => 'labrador'})
      johnny_test.save()
      expect(Animal.all()).to(eq([johnny_test]))
    end
  end
end
