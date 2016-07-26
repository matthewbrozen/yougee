class CreateGardeners < ActiveRecord::Migration
  def change
    create_table :gardeners do |t|
      t.string :name
      t.string :location

      t.timestamps null: false
    end
  end
end
