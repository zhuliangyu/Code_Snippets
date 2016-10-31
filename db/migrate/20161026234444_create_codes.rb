class CreateCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :codes do |t|
      t.string :title
      t.string :work
      t.boolean :flag
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
