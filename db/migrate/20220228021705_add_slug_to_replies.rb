class AddSlugToReplies < ActiveRecord::Migration[5.2]
  def change
    add_column :replies, :slug, :string
    add_index :replies, :slug, unique: true
  end
end
