class CreateComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :components do |t|
      t.column :text, :text
      t.column :image, :integer
      t.column :user, :string

      t.timestamps
    end
  end
end
