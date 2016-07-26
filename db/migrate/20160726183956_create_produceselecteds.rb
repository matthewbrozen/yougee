class CreateProduceselecteds < ActiveRecord::Migration
  def change
    create_table :produceselecteds do |t|
      t.integer :quantity
      t.references :cook, index: true, foreign_key: true
      t.references :produceavailable, index: true, foreign_key: true


      t.timestamps null: false
    end
  end
end
