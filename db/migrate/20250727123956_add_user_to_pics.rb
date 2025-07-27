class AddUserToPics < ActiveRecord::Migration[8.0]
  def change
    add_reference :pics, :user, null: false, foreign_key: true
  end
end
