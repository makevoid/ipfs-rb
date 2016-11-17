
# 1- go on BlockchainPen.com
#
# http://blockchainpen.com

# 2 - fund the wallet you see on blockchainpen (1mtc = 10 messages)


# 3 - Save the IPFS hash to the blockchain

# JSON format: {"ipfs": "hash"}

# JSON format: {"ipfs": "abcef1234567890abcef1234567890"}

# as simple as that


# ---------

path = File.expand_path "../", __FILE__

file = "#{path}/documents/document.txt"

client = IPFS::Client.default
