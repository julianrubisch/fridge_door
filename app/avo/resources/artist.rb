class Avo::Resources::Artist < Avo::BaseResource
  self.includes = [ :artworks ]
  self.attachments = [ :avatar ]
  # self.search = {
  #   query: -> { query.ransack(id_eq: q, m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :first_name, as: :text
    field :last_name, as: :text
    field :date_of_birth, as: :date
    field :notes, as: :trix
    field :avatar, as: :file, is_image: true
    field :artworks, as: :has_many
  end
end
