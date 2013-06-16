# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{net-http-persistent}
  s.version = "2.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eric Hodel"]
  s.date = %q{2013-06-16}
  s.description = %q{Manages persistent connections using Net::HTTP plus a speed fix for Ruby 1.8.
It's thread-safe too!

Using persistent HTTP connections can dramatically increase the speed of HTTP.
Creating a new HTTP connection for every request involves an extra TCP
round-trip and causes TCP congestion avoidance negotiation to start over.

Net::HTTP supports persistent connections with some API methods but does not
handle reconnection gracefully.  Net::HTTP::Persistent supports reconnection
and retry according to RFC 2616.}
  s.email = ["drbrain@segment7.net"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
  s.files = [".autotest", ".gemtest", "History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/net/http/faster.rb", "lib/net/http/persistent.rb", "lib/net/http/persistent/ssl_reuse.rb", "test/test_net_http_persistent.rb", "test/test_net_http_persistent_ssl_reuse.rb"]
  s.homepage = %q{http://docs.seattlerb.org/net-http-persistent}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{net-http-persistent}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Manages persistent connections using Net::HTTP plus a speed fix for Ruby 1.8}
  s.test_files = ["test/test_net_http_persistent.rb", "test/test_net_http_persistent_ssl_reuse.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<minitest>, ["~> 3.4"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_development_dependency(%q<hoe>, ["~> 3.0"])
    else
      s.add_dependency(%q<minitest>, ["~> 3.4"])
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_dependency(%q<hoe>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 3.4"])
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
    s.add_dependency(%q<hoe>, ["~> 3.0"])
  end
end
