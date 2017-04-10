node default {
  notify{"Your node is not configured":}
}

node /ip-172-31-8-26/ {
  include apache
}

node 'test.al.local' {
  include apache
}
