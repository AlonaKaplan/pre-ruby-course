class Parser
  def parse(command)
    commands = command.split(/\W+/)
    commands.each {|commandPart| commandPart.downcase!}
  end
end