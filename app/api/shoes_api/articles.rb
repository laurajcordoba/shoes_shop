module ShoesApi
  class Articles < Grape::API

    namespace 'services' do

      resource :articles do

        desc 'Load all the articles that are in the Database.'
        get jbuilder: 'articles/index' do
          @articles = Article.all
        end

      end

    end

  end
end
