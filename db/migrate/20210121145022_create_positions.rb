class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.string :name
      t.integer :carrer
      t.integer :contract
      t.boolean :remote
      t.string :city
      t.string :state
      t.text :summary
      t.text :descripition
      t.boolean :public
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
