class ChangeCallBookingToMatches < ActiveRecord::Migration[6.1]
  def change
    change_column :matches, :callbooking, :datetime
  end
end
