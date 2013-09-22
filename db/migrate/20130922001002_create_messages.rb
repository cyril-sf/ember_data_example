class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :type
      t.string :title
      t.string :body
      t.references :user
      t.references :messageable, polymorphic: true

      t.timestamps
    end
  end
end
