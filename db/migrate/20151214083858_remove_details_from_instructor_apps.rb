class RemoveDetailsFromInstructorApps < ActiveRecord::Migration
  def change
    remove_column :instructor_apps, :email, :string
    remove_column :instructor_apps, :pronouns, :string
    remove_column :instructor_apps, :address, :string
    remove_column :instructor_apps, :phone, :string
    add_column :instructor_apps, :semester, :string
  end
end
