module Executable
  def exe(cmd)
    puts "executing: '#{cmd}'"
    out = `#{cmd}`
    puts out
    out
  end
end
