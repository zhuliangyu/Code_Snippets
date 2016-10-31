class ChangeColumnDefaultCodes < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:codes, :flag, false)

  end
end
