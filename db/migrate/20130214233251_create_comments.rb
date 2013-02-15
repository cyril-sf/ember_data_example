class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.references :messageable, polymorphic: true

      t.timestamps
    end
  end
end
