# Documentação da gem: https://github.com/rdp/os
# RubyGems para achar novas gems

require 'os' # o primeiro passo é informar que vamos usar essa gem

def my_os 
  if OS.windows?
    'Windows'
  elsif OS.linux?
    'Linux'
  elsif OS.mac?
    'Osx'
  else
    'Não consegui Identificar'
  end
end

puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional é #{my_os}."

