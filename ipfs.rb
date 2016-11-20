require_relative 'env'

IPFS_CLIENT = IF
# IF = IPFS_CLIENT

file = "#{PATH}/documents/document.txt"

# custom_ipfs_location = "..."
# ipfs = custom_ipfs_location


require_relative 'lib/ipfs_add'

extend IPFSAdd

puts "Adding the file to ipfs:"
puts "-"*80
puts "file: #{file}"
resp = ipfs_add file
# hash = IF.add file

hash = resp.match /added (\S+)/ # matches the ipfs hash

hash = hash[1] if hash

puts
puts "Getting the file from ipfs:"
puts "-"*80
contents = IF.cat hash

# ---------

# infos (read)

puts "hash: #{hash}"
puts contents

# ---------

# JSON to publish to the blockchain

puts "\n"
puts "JSON - publish it via blockchainpen.com"
puts "-"*80

puts( { ipfs: hash }.to_json )

puts "\n"

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
