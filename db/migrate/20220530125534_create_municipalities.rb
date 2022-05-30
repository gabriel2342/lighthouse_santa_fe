class CreateMunicipalities < ActiveRecord::Migration[7.0]
  def change
    create_table :municipalities do |t|
      t.references :organization, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
