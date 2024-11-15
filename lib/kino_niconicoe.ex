defmodule KinoNiconico do
  @moduledoc """
  A simple Kino for playing Niconico videos on Livebook.

  It was implemented with reference to [KinoYoutube](https://github.com/acalejos/kino_youtube) and
  [AstroNicoEmbed](https://github.com/Robot-Inventor/astro-nico-embed/).
  """
  use Kino.JS

  def new(video_id, opts \\ []) do
    loading = opts[:loading] || "lazy"
    aspect_ratio = opts[:aspect_ratio] || "16 / 9"

    iframe = """
    <iframe
      src="https://embed.nicovideo.jp/watch/#{video_id}"
      allowfullscreen
      loading="#{loading}"
      allow="picture-in-picture;"
      style="width: 100%; aspect-ratio: #{aspect_ratio};"
    ></iframe>
    """

    Kino.JS.new(__MODULE__, iframe)
  end

  asset "main.js" do
    """
    export function init(ctx, iframe) {
      ctx.root.innerHTML = iframe;
    }
    """
  end
end
