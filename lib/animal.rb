class Animal
  attr_reader(:name, :gender, :admit_date, :type, :breed)
  @@animals = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @gender =  attributes.fetch(:gender)
    @admit_date = attributes.fetch(:admit_date)
    @type = attributes.fetch(:type)
    @breed = attributes.fetch(:breed)
  end

  define_singleton_method(:all) do
    @@animals
  end

  define_method(:save) do
    @@animals.push(self)
  end

end
