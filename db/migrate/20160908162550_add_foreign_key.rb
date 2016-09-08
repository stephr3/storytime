class AddForeignKey < ActiveRecord::Migration[5.0]
  def change
    add_column :components, :story_id, :integer
  end
end
