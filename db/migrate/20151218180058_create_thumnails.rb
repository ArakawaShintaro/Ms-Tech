class CreateThumnails < ActiveRecord::Migration
  def change
    create_table :thumnails do |t|
      t.string :image
      t.integer :status
      t.integer :subject_id
      t.timestamps
    end
  end
end
