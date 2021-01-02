class Post < ActiveRecord::Base
  belongs_to :author

  def author_name
    self.try(:author).try(:name)
  end

  def author_name=(name)
    author = Author.find_or_create_by(name: name)
    self.artist = artist
  end
end
