class Instagram

    def initialize(access_token)
      @access_token = ENV['ACCESS_TOKEN']
    end

    def recent_posts
      insta_media = HTTParty.get('https://api.instagram.com/v1/users/8240865/media/recent?access_token=8240865.1fb234f.a791d5203eda498586fb802a698d3c02')
      insta_media_results = JSON.parse(insta_media.body)
      insta_media_results['data'][0]['images']['thumbnail']['url']
    end

    def last_nine
      insta_media = HTTParty.get('https://api.instagram.com/v1/users/8240865/media/recent?access_token=8240865.1fb234f.a791d5203eda498586fb802a698d3c02')
      insta_media_results = JSON.parse(insta_media.body)
      photo_array = []
      for i in 0..8
        photo_array.push(insta_media_results['data'][i]['images']['thumbnail']['url'])
      end
      photo_array
      
    end

    



end