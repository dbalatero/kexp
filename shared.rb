require 'digest/md5'
require 'open-uri'

class Kexp
  class << self
    def url_key(time)
      time.strftime("%Y/%m/%d/%l%P").gsub(/\s/, '')
    end

    def cache_file(time)
      "cache/#{Digest::MD5.hexdigest(url_key(time))}"
    end

    def cached?(time)
      File.exist?(cache_file(time))
    end

    def save_time_to_cache(time)
      File.open(cache_file(time), "w") do |f|
        f.write(open("http://kexp.org/playlist/#{url_key(time)}").read)
      end
    end
  end
end
