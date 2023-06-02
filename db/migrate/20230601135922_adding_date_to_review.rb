class AddingDateToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :posting_date, :date
  end
end
