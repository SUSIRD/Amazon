class AddPublishedAtToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :published, :boolean
    add_column :posts, :published_at, :datetime
  end
end
