class PagesController < ApplicationController

  def thank_you
  end

  def welcome
      m = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    content = m.render(File.open(Rails.root + "README.md", 'r').read)
    render :text => content
  end

end
