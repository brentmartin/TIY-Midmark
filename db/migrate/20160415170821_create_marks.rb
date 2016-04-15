class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.string :message
      t.user :belong_to

      t.timestamps null: false
    end
  end
end
