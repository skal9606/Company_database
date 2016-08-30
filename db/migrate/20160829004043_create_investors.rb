class CreateInvestors < ActiveRecord::Migration
  def change
    create_table :investors do |t|
      t.text :name
      t.text :image
      t.text :education
      t.text :age
      t.text :experience
      t.text :blurb
      t.text :location

      #no foreing key needed here
      t.timestamps null: false
    end
  end
end
