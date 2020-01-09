module TD::Types
  # Describes a block of an instant view web page.
  class PageBlock < Base
    %w[
      title
      subtitle
      author_date
      header
      subheader
      kicker
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
      voice_note
      cover
      embedded
      embedded_post
      collage
      slideshow
      chat_link
      table
      details
      related_articles
      map
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/page_block/#{type}"
    end
  end
end
