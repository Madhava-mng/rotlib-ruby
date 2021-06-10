#! /bin/env ruby

class Hex
  attr_accessor :data
  def initialize(data = $stdin.read)
    @data = data
  end
  def toHex
    $stdout.print data.dump.bytes.map {|e| e.to_s(16)}.join
  end
  def fromHex
    @data.split.pack('H*')
  end
end

def main
  file = ''
  data = ''
  encode = true
  help =  "base16 [-d][-h] [file]\n"
  help += "hexadecimal encoder and decoder.\n"
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
      hex = Hex::new(data)
    else
      puts "base16: #{file}: No such file."
      exit
    end
  else
    hex = Hex::new
  end
  if encode
    hex.toHex
  else
    puts hex.fromHex.undump
  end
end
main