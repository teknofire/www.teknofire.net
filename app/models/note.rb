class Note < ActiveRecord::Base
  attr_accessible :content, :title
  
  validates_presence_of :content, :title
  
  
  def to_s
    self.title
  end
end
