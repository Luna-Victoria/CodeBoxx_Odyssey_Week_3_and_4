class ChangeFileType < ActiveRecord::Migration[5.2]
  def change
    change_column :leads, :File_attached, :binary
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
