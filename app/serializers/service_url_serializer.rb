class ServiceUrlSerializer < ActiveModel::Serializer
  attributes :url

  def id
    url
  end
end
