class LogoDrop < Liquid::Drop
  def initialize(logo)
    @logo = logo
  end

  def id
    @logo["id"]
  end

  def image_urls
    {
        'image' => @logo.image.url(:image),
    }
  end
end

markdown = Liquid::Template.parse(text).render("image" => @logo.image.map{|p| LogoDrop.new(p)})
