class Picture < ActiveRecord::Base
  attr_accessible :artist, :copyrighted, :title, :url

  validates :title, :presence => true
  validates :url,   :presence => true, :format => { :with => /^https?:\/\/.*/, :message => "should contain a valid url"}

  scope :newest_first,     order("created_at DESC")
  scope :not_copyrighted,  where(:copyrighted => false)
end
