class Scraping


  def self.scraping_image(lasts)
    agent = Mechanize.new
    page = agent.get(lasts)
    player_name = page.at('.profile h1').inner_text if page.at('.profile h1')
    number = page.at('.profile > dl:nth-child(3) > dd').inner_text if page.at('.profile > dl:nth-child(3) > dd')
    image_url = page.at('.photo img').get_attribute(:src) if page.at('.photo img')


      player = Player.where(first_name: player_name).first_or_initialize
      player.number = number
      player.image_url = image_url

      player.save

  end


  def self.next_pages(nexts)
    next_pages = []
    agent = Mechanize.new
    current_page =agent.get(nexts)
    elements = current_page.search('.movie a')
    elements.each do |ele|
      next_pages << ele.get_attribute('href')
    end

    next_pages.each do |next_page|
      scraping_image('http://soccer.yahoo.co.jp' + next_page)
    end
  end

  def self.get_info
    links = []
    agent = Mechanize.new
    current_page =agent.get("http://soccer.yahoo.co.jp/jleague/teams/j1")
    elements = current_page.search('.team > dd > a:nth-child(3)')
    elements.each do |ele|
      links << ele.get_attribute('href')
    end

    links.each do |link|
       puts next_pages('http://soccer.yahoo.co.jp' + link)
    end
  end


end