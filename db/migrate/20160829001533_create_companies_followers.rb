class CreateCompaniesFollowers < ActiveRecord::Migration
  def change
    create_table :companies_followers do |t|
      t.integer :company_id
      t.integer :follower_id
    end
  end
end

#THE ABOVE IS THE JOIN TABLE (it only has foreign keys)
