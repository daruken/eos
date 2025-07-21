# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # user (단일 사용자 이메일로 조회)
    field :user, Types::UserType, null: true do
      argument :id, ID, required: true
    end

    def user(id:)
      UserFetcher.fetch_by_id(id)
    end

    # 전체 사용자 목록 조회
    field :users, [ Types::UserType ], null: false

    def users
      UserFetcher.fetch_all
    end

    # node/id 기반 기본 설정 (Relay용)
    field :node, Types::NodeType, null: true, description: "Fetches an object given its ID." do
      argument :id, ID, required: true
    end

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    field :nodes, [ Types::NodeType, null: true ], null: true, description: "Fetches a list of objects given a list of IDs." do
      argument :ids, [ ID ], required: true
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end
  end
end
