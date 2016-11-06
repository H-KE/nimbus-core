class Sunwukong
  def self.notifier
    @notifier ||= Slack::Notifier.new "https://hooks.slack.com/services/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"
  end

  def self.send(text)
    notifier.ping(text)
  end
end
