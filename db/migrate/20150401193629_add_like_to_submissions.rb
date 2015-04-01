class AddLikeToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :like, :integer, :default => 0
  end
end
