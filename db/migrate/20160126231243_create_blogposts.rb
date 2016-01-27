class CreateBlogposts < ActiveRecord::Migration
  def change
    create_table :blogposts do |t|
      t.string :author
      t.string :email
      t.string :blogtitle
      t.string :blogtext

      t.timestamps null: false
    end
  end
end
