class RenameTextToContent < ActiveRecord::Migration[6.0]
  def change
    rename_column :texts, :text, :content
  end
end
