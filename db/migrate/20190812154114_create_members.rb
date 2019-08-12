class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :id
      t.string :pw
      t.string :name
      t.number :snum

      self.primary_key = "id"

      t.timestamps
    end
  end
end
