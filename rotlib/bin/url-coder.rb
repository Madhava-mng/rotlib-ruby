#! /bin/env ruby
require 'net/http'

#include URI

class UrlCoder
  attr_accessor :data
  def initialize(data = $stdin.read)
    @data = data.chomp
  end
  def encode
    return URI.encode_www_form_component(@data)
  end
  def decode
    return URI::decode_www_form_component(@data)
  end
end

def main
  file = ''
  data = ''
  encode = true
  help =  "url-coder [-d][-h] [file]\n"
  help += "url encoder and decoder.\n"
  help += "   -d      decode.\n\n"
  help += "lib: rotlib\n"
  help += "<Madhava-mng@github.com>"

  ARGV.length.times do |a|
    if ARGV[a].start_with? '-'
      if ARGV[a] == '-d'
        encode = false
      else
        puts help
        exit
      end
    else
      file = ARGV[a]
    end
  end

  if file != ''
    if File.file? file
      File.open(file, 'r') do |f|
        data += f.read
        f.close
      end
      url_encode = UrlCoder::new(data)
    else
      puts "url-coder: #{file}: No such file."
      exit
    end
  else
    url_encode = UrlCoder::new
  end
  if encode
    puts url_encode.encode
  else
    puts url_encode.decode
  end
end
main
