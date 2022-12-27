class PagesController < ApplicationController
  def about
    @heading = 'Страница про проект!'
    @text = 'Текст!'
  end
end
