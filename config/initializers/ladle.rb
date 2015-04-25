Ladle::Server.new(
  port: 3897,
  host: localhost,
  ldif: 'config/ldap_fixtures.ldif',
).start
