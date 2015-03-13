module ShoesApi
  class Stores < Grape::API

    namespace 'services' do

      resource :stores do

        desc 'Load all the stores that are stored in the Database.'
        get jbuilder: 'stores/index' do
          @stores = Store.all
        end

        desc 'Load all the articles from a specific store that are in the Database.'
        # Patameters: id: a numeric value of the ID of the store
        params do
          requires :id, type: Integer
        end

        get ':id/articles', jbuilder: 'stores/show' do
          @store = Store.find params[:id]
        end

      end

    end

  end
end
