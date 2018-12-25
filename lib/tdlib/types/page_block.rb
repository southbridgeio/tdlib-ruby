module TD::Types
  # Describes a block of an instant view web page.
  class PageBlock < Base
    %w[
      title
      subtitle
      author_date
      header
      subheader
      paragraph
      preformatted
      footer
      divider
      anchor
      list
      block_quote
      pull_quote
      animation
      audio
      photo
      video
      cover
      embedded
      embedded_post
      collage
      slideshow
      chat_link
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/page_block/#{type}"
    end
  end
end
