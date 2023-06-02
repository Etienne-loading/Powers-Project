class DeletingPostingDateOnReview < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :posting_date
  end
end
