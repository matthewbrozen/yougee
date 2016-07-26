class CreateProduceavailables < ActiveRecord::Migration
  def change
    create_table :produceavailables do |t|
      t.references :produce, index: true, foreign_key: true
      t.references :gardener, index: true, foreign_key: true
      t.integer :quantitystarted
      t.integer :quanititytaken
      t.string :location

      t.timestamps null: false
    end
  end
end
