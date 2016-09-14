# datacenter.rb
Facter.add('datacenter') do
  setcode do
    hostnae = Facter.value(:hostname)
    case hostname
    when /den/
       'denver'
    when /dfw/
       'dallas'
    else
      'nodc'
    end
      
