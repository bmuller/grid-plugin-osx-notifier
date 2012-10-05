require 'gridcli'
require 'terminal-notifier'

module Grid
  module Plugin
    module OSXNotifier
      VERSION = "0.0.1"
    end
  end
end

GridCLI.hooker.register(:after_update) { |posts|
  return posts if posts.length == 0

  title = "The Grid"
  if posts.length == 1
    subtitle = "You have a new message."
  else
    subtitle = "You have #{posts.length} new messages."
  end

  senders = posts.map { |p| 
    p.send(p.known_attributes.first).from_username
  }.uniq

  if senders.length > 3
    senders = senders.slice(0, 3) + ["and others"]
  end

  msg = "From " + senders.join(", ")
  TerminalNotifier.notify(msg, :title => title, :subtitle => subtitle)
  posts
}
