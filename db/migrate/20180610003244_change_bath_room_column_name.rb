class ChangeBathRoomColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :rooms, :bath_room, :bathroom
  end
end
