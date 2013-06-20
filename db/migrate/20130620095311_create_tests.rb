class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :string
      t.integer :integer
      t.float :float
      t.decimal :decimal
      t.datetime :datetime
      t.timestamp :timestamp
      t.time :time
      t.date :date
      t.boolean :boolean
      t.text :text
      t.binary :binary

      t.timestamps
    end
  end
end
