module TD::Types
  # Related articles.
  #
  # @attr header [TD::Types::RichText] Block header.
  # @attr articles [Array<TD::Types::PageBlockRelatedArticle>] List of related articles.
  class PageBlock::RelatedArticles < PageBlock
    attribute :header, TD::Types::RichText
    attribute :articles, TD::Types::Array.of(TD::Types::PageBlockRelatedArticle)
  end
end
