class ChangeBedRoomColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :rooms, :bed_room, :bedroom
  end
end