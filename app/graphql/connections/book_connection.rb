class Connections::BookConnection < GraphQL::Pagination::RelationConnection
  def nodes
    load_nodes
  end

  private

  def relation_offset(relation)
    relation.offset_value
  end

  def relation_limit(relation)
    relation.limit_value
  end

  def relation_count(relation)
    relation.size
  end

  def null_relation(relation)
    relation.none
  end
end
