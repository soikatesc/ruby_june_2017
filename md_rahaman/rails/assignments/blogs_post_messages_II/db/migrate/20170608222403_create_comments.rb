class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :commentable, polymorphic: true
      t.string :comment

      t.timestamps
    end
  end
end
