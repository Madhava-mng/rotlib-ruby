#! /bin/env ruby
class Rot47
  attr_accessor :word
  def initialize(words='')
    @words = words
    if @words == ''
      @words = $stdin.read
    end
  end

  def rot47(iter = 47 , print_out=true)
    tmp_value = ''
    @words.bytes.map do |c|
      if c > 32 and c < 127
        c += iter
        loop do
          if c > 126
            c = (c - 126)+32
          end
          break if c > 32 and c < 127
        end
      end
      if print_out
        print c.chr
      else
        tmp_value += c.chr
      end
    end
    return tmp_value
  end
  
  def rot47_log(show_max_length = 25)
    if @words.length > show_max_length
      @words = @words.split("\n")[0]
      @words = @words[0,show_max_length]
    end
    94.times do |i|
      puts "#{i.to_s.rjust 2} \e[32;m>\e[0m #{rot47(i, false)}"
    end
  end
end

def main
  log = false
  basic = true
  rot = 47
  file = ''
  data = ''
  help =  "rot47 [-l][-r=<int>][-h] [file]\n"
  help += "rot47 encoder and possibility viewer.\n"
  help += "   -l       list all possibility with rotation.\n"
  help += "   -r=<int> force rotate.\n\n"
  help += "lib: rotlib\n"
  help += "<Madhava-mng@github.com>"

  ARGV.length.times do |a|
    if ARGV[a].start_with? '-'
      if ARGV[a] == '-l'
        log = true
        basic = false
      elsif ARGV[a].start_with? '-r='
        rot = ARGV[a][3,ARGV[a].length].to_i
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
      rot47 = Rot47::new(data)
    else
      puts "rot47: #{file}: No such file"
      exit
    end
  else
    rot47 = Rot47::new
  end

  if basic
    rot47.rot47(rot)
  elsif log
    rot47.rot47_log
  end
end

main