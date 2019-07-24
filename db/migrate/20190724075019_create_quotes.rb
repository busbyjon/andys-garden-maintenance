class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :quote
      t.string :name
      t.boolean :active
    end

    Quote.create :name => "S Brown", :quote => "We are happy to recommend Andy, whether your garden job be big or small. He has competently helped us with routine tasks, such as hedge cutting and is currently maintaining my mother's garden on a regular basis, undertaking tasks at his own discretion to prepare the garden for Spring. What a treasure he is proving to be!", :active => 1
    Quote.create :name => "D. Iller", :quote => "Andy has been helping me with my allotment and garden since he started his own business. He is reliable and his work is excellent. My church have also used him on many occasions. Friendly and trustworthy.", :active => 1
    Quote.create :name => "P Lyseight-Jones", :quote => "Andy and his team performed miracles.  They turned a scruffy and demoralising back garden into an inviting space which I can't believe is mine. They found really lovely turf and laid it perfectly.  They sourced and put up new fences, relocated the garden gate (and made a new one from scratch).  They sorted out the woodwork inside the shed and the guttering, water butt, gravelling and the rest.    It's not just the work that is impressive, but the way in which the work is done: always positive, always on time, always tidy, always checking that things are as they should be and always suggesting some really good ideas about what can be done.  I am both delighted and relieved that Andy and his team were recommended to me, and I am more than happy to recommend them to you as well", :active => 1
    Quote.create :name => "A Geewan", :quote => "Andy is extremely hard working, flexible and helpful. He offers support and advise, as well as keeping the garden tidy and weed free. He ensures that he completes all jobs well and responds to emails and texts within 24 hours", :active => 1
    Quote.create :name => "M Pearcey", :quote => "Andy has been working for us for over 18 months now and is someone that i would completely recommend.  Very hardworking and always willing to help on various different jobs around the garden, Andy is also extremely trustworthy and often comes whilst we are away to help keep on top things", :active => 1
  end
end
