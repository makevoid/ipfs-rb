require_relative 'executable'


# config
#

IPFS_CMD = "ipfs" # auto-located by the shell env
# IPFS_CMD = "/usr/local/bin/ipfs" # linux default (debian/ubuntu)



module IPFSAdd

  include Executable

  def ipfs_add(file)
    exe "#{IPFS_CMD} add #{file}"
  end

end
