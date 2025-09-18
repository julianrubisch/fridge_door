class Avo::Resources::Artwork < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: q, m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :artist, as: :belongs_to
    field :title, as: :text
    field :description, as: :trix
    field :created_on, as: :date, default: Date.current
    field :image, as: :file, is_image: true
  end
end
