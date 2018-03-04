class WelcomeController < ApplicationController
  def index
    @articles = [
        {
            date: '2018/02/02',
            title: 'hogefugaほげふが'
        },
        {
            date: '2018/02/02',
            title: 'hogefugaほげふが'
        }
    ]
  end
end
