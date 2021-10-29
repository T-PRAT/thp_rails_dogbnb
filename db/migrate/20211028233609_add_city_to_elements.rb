class AddCityToElements < ActiveRecord::Migration[5.2]
  def change
    add_reference :dog_sitters, :city, foreign_key: true
    add_reference :dogs, :city, foreign_key: true
  end
end
