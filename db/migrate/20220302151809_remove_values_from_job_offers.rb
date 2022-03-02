class RemoveValuesFromJobOffers < ActiveRecord::Migration[6.1]
  def change
    remove_column :job_offers, :values, :string
  end
end
