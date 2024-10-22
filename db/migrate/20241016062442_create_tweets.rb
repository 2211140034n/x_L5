class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    unless table_exists?(:tweets)
      create_table :tweets do |t|
        t.string :message
        t.integer :user_id, foreign_key: true
        
        t.timestamps
      end
    end
  end
end
