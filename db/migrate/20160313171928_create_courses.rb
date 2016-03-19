class CreateCourses < ActiveRecord::Migration
  def change
   	create_table :subjects do |t|
   		t.integer :id
   		t.timestamps null: false
   	end
   
    create_table :courses do |t|
      t.string :name
      t.timestamps
    end
  end
end
