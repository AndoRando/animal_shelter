class Customer
  attr_reader(:name, :phone, :animal_pref, :breed_pref)

  define_method(:initialize) do |attr|
    #Define variables here
    @name = attr.fetch(:name)
    @phone = attr.fetch(:phone)
    @animal_pref = attr.fetch(:animal_pref)
    @breed_pref = attr.fetch(:breed_pref)
  end

end
