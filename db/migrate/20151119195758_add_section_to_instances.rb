class AddSectionToInstances < ActiveRecord::Migration
  def change
    add_column :instances, :section, :integer
  end
end
