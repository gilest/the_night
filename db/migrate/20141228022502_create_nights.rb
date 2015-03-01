class CreateNights < ActiveRecord::Migration
  def change
    create_table :nights do |t|
      t.belongs_to :user, index: true
      t.date :night

      t.timestamps
    end
  end
end
