class Document < ApplicationRecord
  scope :search_bullet_points, ->(query) {
    where("to_tsvector('english', bullet_points) @@ plainto_tsquery('english', ?)", query)
      .select("documents.*, ts_rank(to_tsvector('english', bullet_points), plainto_tsquery('english', #{ActiveRecord::Base.connection.quote(query)})) AS rank")
      .order("rank DESC")
  }
end