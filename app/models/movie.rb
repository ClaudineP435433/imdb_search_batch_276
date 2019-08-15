class Movie < ApplicationRecord
  belongs_to :director
  # PG Search Recherche simple 1 modele
  # pg_search_scope :search_by_title_and_syllabus,
  #   against: [ :title, :syllabus ],
  #   associated_against: {
  #     director: [ :first_name, :last_name ]
  #   },
  #   using: {
  #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   }

  #PG Search & Multisearch
  # include PgSearch
  # multisearchable against: [ :title, :syllabus ]


  searchkick
end
