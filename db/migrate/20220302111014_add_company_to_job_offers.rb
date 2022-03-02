class AddCompanyToJobOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :job_offers, :company, :string
  end
end
