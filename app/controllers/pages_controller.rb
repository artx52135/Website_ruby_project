class PagesController < ApplicationController
  def about
    @heading = 'Страничка про проект!'
    @text = 'Текст'
  end
end
