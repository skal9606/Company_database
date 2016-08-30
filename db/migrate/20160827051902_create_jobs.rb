class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.text :title
      t.text :role
      t.text :salary

      #foreign key
      t.text :company_id

      t.timestamps null: false
    end
  end
end
