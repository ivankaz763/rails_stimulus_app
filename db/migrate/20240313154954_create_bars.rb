class CreateBars < ActiveRecord::Migration[7.0]
  def change
    create_table :bars do |t|
      t.string :name
      t.references :foo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
