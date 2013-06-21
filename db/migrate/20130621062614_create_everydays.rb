class CreateEverydays < ActiveRecord::Migration
  def change
    create_table :everydays do |t|
      t.string :category, :limit => 20
      t.string :event, :limit => 50
      t.datetime :begin_at
      t.float :quantity
      t.string :scene, :limit => 20
      t.string :remark, :limit => 255

      t.timestamps
    end

    add_index :everydays, [:category, :begin_at]
    add_index :everydays, [:event, :begin_at]
  end
end
