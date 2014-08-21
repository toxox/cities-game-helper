class AddFirstLetterToCity < ActiveRecord::Migration
  def change
    add_column :cities, :first_letter, :string
  end
end
