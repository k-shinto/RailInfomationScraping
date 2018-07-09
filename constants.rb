module Constants  
  URLS = { west_jr: 'https://trafficinfo.westjr.co.jp/sp/kinki.html',
    hankyuu: 'http://www.hankyu.co.jp/m/railinfo/',
    hanshin: 'http://rail.hanshin.co.jp/'
   }
  XPATH = { west_jr: '//*[@id="syosai_1"]/div[1]/div[2]/p[1]/text()[1]',
    hankyuu: '/html/body/p[2]/text()[1]',
    hanshin: '//*[@id="main"]/div[2]/ul/li'
  }
end