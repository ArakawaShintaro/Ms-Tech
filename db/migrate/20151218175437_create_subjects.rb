class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :company
      t.string :occupation
      t.string :position
      t.timestamps
    end
  end
end
