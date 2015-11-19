class CreateInstances < ActiveRecord::Migration
  def change
    
    create_table :courses do |t|
      t.integer :coursenum
      t.string :title
      t.text :description
      t.boolean :active
    end

    create_table :instances do |t|
      t.integer :year
      t.string :semester
      t.string :location
      t.string :time
    end
    
    create_table :instructors do |t|
      t.string :email
      t.string :name
      t.string :tnumber, :null => true
    end

    create_table :students do |t|
      t.string :name
      t.string :email
    end
   
    create_table :grades do |t|
      t.boolean :orientation, :default => false
      t.boolean :exco_fair, :default => false
      t.boolean :agreement, :default => false
      t.float :midterm_eval
      t.float :auditing
      t.float :final_eval
      t.float :final_paper
    end

    create_table :application_renewals do |t|
      t.string :name
      t.string :semester
      t.integer :year
      t.integer :credits
      t.integer :capacity
      t.text :problems
      t.text :changes
      t.text :engagment
    end

    create_table :instructor_apps do |t|
      t.string :course
      t.integer :year
      t.string :email
      t.string :pronouns
      t.string :address
      t.string :phone
      t.string :tnumber, :null => true
      t.text :status
      t.text :qualifications
      t.text :teaching_exp
      t.text :problems
      t.text :excos_taken, :null => true
      t.text :exco_problems, :null => true
      t.text :safe_space
    end

    create_table :new_courses do |t|
      t.string :name
      t.string :semester
      t.integer :year
      t.string :division
      t.text :description
      t.text :why_exco
      t.text :evaluations
      t.integer :credits
      t.integer :hours_meet
      t.integer :hours_outside
      t.integer :capacity
      t.string :signature
   end
  
    add_reference :courses, :instances, index: true, foreign_key: true
    add_reference :instructors, :instances, index: true, foreign_key: true
    add_reference :students, :instances, index: true, foreign_key: true
    add_reference :grades, :instructors, index: true, foreign_key: true
    add_reference :grades, :instances, index: true, foreign_key: true
    add_reference :application_renewals, :instructor_apps, index: true, foreign_key: true
    add_reference :application_renewals, :courses, index: true, foreign_key: true
    add_reference :instructor_apps, :instructors, index: true, foreign_key: true
    add_reference :new_courses, :instructor_app, index: true, foreign_key: true
 
  end
end
