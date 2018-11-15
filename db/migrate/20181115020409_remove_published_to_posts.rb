class RemovePublishedToPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :published, :string
  end
end
