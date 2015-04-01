class AddLikeToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :like, :integer
  end
end
