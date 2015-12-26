class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :title
      t.text :content
      t.integer :subject_id
      t.timestamps null: false
    end
  end
end
