class CreateArticle < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      add_column :articles, :created_at, :datetime
      add_column :articles, :updated_at, :datetime
      t.timestamps
    end
  end
end
