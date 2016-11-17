IPFS_CLIENT = IF
# IF = IPFS_CLIENT

file = "#{PATH}/documents/document.txt"

# custom_ipfs_location = "..."
# ipfs = custom_ipfs_location

ipfs = "ipfs" # auto-located by the shell env
ipfs = "/usr/local/bin/ipfs" # linux default (debian/ubuntu)

def IF.put(file)
  puts `#{ipfs} put #{file}`
end

hash = IF.put file

contents = IF.cat hash

# ---------

puts "hash: #{hash}"
puts contents
puts "-"*80

# ---------


# usage:
#
#   ruby ipfs.rb
#


# ------------------------------------------------------------------


# instruction (after having ran this file) to publish the ipfs hash on the blockchain using blockchain-pen:

#

# 1- go on BlockchainPen.com
#
# http://blockchainpen.com

# 2 - fund the wallet you see on blockchainpen (1mtc = 10 messages)


# 3 - Save the IPFS hash to the blockchain

# JSON format: {"ipfs": "hash"}

# JSON format: {"ipfs": "abcef1234567890abcef1234567890"}

# as simple as that


# ---------
