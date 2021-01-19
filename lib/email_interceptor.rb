class EmailInterceptor
def self.delivering_email(message)
  message.subject = "#{message.to} #{message.subject}"
  message.to = [ 'theteam@innermile.org' ]
end
end