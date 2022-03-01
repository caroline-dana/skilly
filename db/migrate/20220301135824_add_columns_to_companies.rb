class AddColumnsToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :name, :string
    add_column :companies, :employees, :integer
    add_column :companies, :city, :string
    add_column :companies, :recruiter_message, :string
  end
end
