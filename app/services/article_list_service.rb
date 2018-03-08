module ArticleListService
  def article_list(article_count = nil)
    # ArticleとProjectArticleからarticle_count件レコードを取ってくる
    articles = (article_count.nil? ? Article.published.reverse_order : Article.published.limit(article_count).reverse_order).to_a
    project_articles = (article_count.nil? ? ProjectArticle.all.reverse_order : ProjectArticle.limit(article_count).reverse_order).to_a

    # articleとproject_articleをマージソートして配列に入れる(最大article_count件)
    result = []

    (article_count || [articles.count, project_articles.count].max).times do
      if (articles.nil? && project_articles.nil?)
        break
      end

      if articles.nil?
        result = project_articles.shift
      end

      if project_articles.nil?
        result = articles.shift
      end

      if articles.first.published_at > project_articles.first.published_at
        result = articles.shift
      else
        result = project_articles.shift
      end
    end

    result
  end

  module_function :article_list
end