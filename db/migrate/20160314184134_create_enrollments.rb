class CreateEnrollments < ActiveRecord::Migration
  def change
  
  	create_table :users do |t|
  		t.string :name
  		t.timestamps null: false
  	end
  	
  	create_table :courses do |t|
  		t.string :name
  		t.timestamps nill: false
  	end
  	
    create_table :enrollments do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :course, index: true

      t.timestamps
    end
  end
end
