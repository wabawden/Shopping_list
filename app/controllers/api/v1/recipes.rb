module API
  module V1
    class Recipes < Grape::API
      include API::V1::Defaults
      resource :recipes do
        desc "Return all items"
        get "" do
          Recipe.all
        end
      desc "Return an item"
        params do
          requires :id, type: String, desc: "ID of the item"
        end
        get ":id" do
          Recipe.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end