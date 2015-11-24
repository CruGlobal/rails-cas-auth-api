class ServiceUrlSerializer < ActiveModel::Serializer
  def id
    object.url
  end
end
