class AddCardIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :card, null: false, foreign_key: true
  end
end
