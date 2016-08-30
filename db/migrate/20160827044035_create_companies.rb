class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :name
      t.text :overview
      t.text :image
      t.text :industry
      t.text :CEO
      t.text :location
      
      t.timestamps null: false
    end
  end
end
