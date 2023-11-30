class AddPageToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :page, :integer
  end
end
