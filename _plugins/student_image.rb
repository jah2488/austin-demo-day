module Jekyll
  class StudentImage < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
      @tokens = tokens
    end

    def site(context)
      context.registers[:site]
    end


    def render(context)
      site_url     = site(context).config['url']
      site_baseurl = site(context).baseurl
      require 'pry'; binding.pry
      "<img src='#{site_url + site_baseurl }images/#{@page.cohort}/#{@page.id}.jpg' alt='photo for #{@page.student}'>"
    end
  end
end
Liquid::Template.register_tag('student_image', Jekyll::StudentImage)
