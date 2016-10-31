class DeleteFk < ActiveRecord::Migration[5.0]
  def change
    remove_column :kinds, :code_id

  end
end
