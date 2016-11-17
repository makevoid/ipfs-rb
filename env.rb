path = File.expand_path "../", __FILE__

PATH = path


require 'bundler'
Bundler.require :default

# w/o bundler:
#
# require 'ipfs/client'



# IPFS client

IF = IPFS::Client.default
# IPFS_CLIENT
