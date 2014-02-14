class AddSubjectToBlogpost < ActiveRecord::Migration
  def change
    add_column :blogposts, :subject, :string
  end
end
