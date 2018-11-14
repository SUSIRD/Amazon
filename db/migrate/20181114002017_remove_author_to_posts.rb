class RemoveAuthorToPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :curated, :string
  end
end
