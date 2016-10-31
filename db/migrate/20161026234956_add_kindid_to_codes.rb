class AddKindidToCodes < ActiveRecord::Migration[5.0]
  def change
    add_reference :codes, :kind, foreign_key: true
  end
end
