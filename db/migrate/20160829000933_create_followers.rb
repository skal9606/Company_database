class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.text :name
      t.text :image
      t.text :follows1
      t.text :follows2
      t.text :follows3
      t.text :education
      t.text :age
      t.text :blurb
      t.text :location

      #no foreign key needed here
      t.timestamps null: false
    end
  end
end
