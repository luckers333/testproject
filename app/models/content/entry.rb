class Content::Entry < ActiveRecord::Base
  
  def self.get_entries_search(params)
    entries = Content::Entry.order("created_at DESC")    
    return entries
  end  
end
