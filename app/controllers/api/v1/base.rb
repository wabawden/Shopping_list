module API
  module V1
    class Base < Grape::API
      mount API::V1::Items
      mount API::V1::Recipes
    end
  end
end