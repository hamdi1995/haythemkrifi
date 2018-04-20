class AddCategoryIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :Category_id, :integer
  end
end
