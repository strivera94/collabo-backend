class CreateMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :media do |t|
      t.string :name
      t.references :discipline, null: false, foreign_key: true

      t.timestamps
    end
  end
end
