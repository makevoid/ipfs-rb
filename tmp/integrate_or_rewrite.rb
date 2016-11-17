# integrate

module IPFS
  module Commands
    class Put
      def self.call(client, node)
        # ...
      end
    end
  end

  class Client
    include IPFSPut
    alias :put :ipfs_put
  end
end


# rewrite?

# shell cmd wrapper?

# or do the put via net http (probably the best option)

# todo: #benchmark #measure
