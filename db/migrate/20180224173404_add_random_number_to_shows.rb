class AddRandomNumberToShows < ActiveRecord::Migration
  def change
    add_column :shows, :number, :integer
  end
end
