class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :author, :tags

  def author
    { name: self.object.author.name }
  end
end
