class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.string :message
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
