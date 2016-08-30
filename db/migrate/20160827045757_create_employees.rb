class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.text :name
      t.text :role
      t.text :previous
      t.text :education
      t.text :image
      t.text :age
      t.text :email

      #foreign key
      t.text :company_id

      t.timestamps null: false
    end
  end
end
