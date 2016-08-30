class CreateCompaniesInvestors < ActiveRecord::Migration
  def change
    create_table :companies_investors, :id => false do |t|
      t.integer :company_id
      t.integer :investor_id
    end
  end
end


#THIS IS THE JOIN TABLE ABOVE
