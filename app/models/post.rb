class Post < ActiveRecord::Base
  
  #Check if attributes are correctly defined
  validates :title, :presence => true;
  validates :content, :presence => true;
  validates :author, :presence => true;
  validates :date, :presence => true;
end
