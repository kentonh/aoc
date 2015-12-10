require 'openssl'

print "Hello\n What first part?   "
npt = gets

for i in 0..10000000 do
  hash = OpenSSL::Digest::MD5.hexdigest("bgvyzdsv" + i.to_s)
  if hash =~ /^000000/
    puts i
    puts hash
    break
  end
end
