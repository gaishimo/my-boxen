# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",      "3.0.2"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "homebrew",   "1.4.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.2.9"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.3.4"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "osx",        "2.0.0"

github "java",     "1.1.2"
github "foreman",   "1.0.0"
github "virtualbox", "1.0.5"
github "vagrant", "2.0.10"

# github "mysql", "1.1.5"
github "mongodb", "1.0.5"

github "dropbox",  "1.1.2"
github "chrome",      "1.1.1"
github "opera",       "0.0.5"
github "firefox",       "1.1.1"

github "sublime_text_2",    "1.1.2"
github "sublime_text_3",    "1.0.0",  :repo => "jozefizso/puppet-sublime_text_3"
github "macvim", "1.0.0"
github "iterm2", "1.0.3"

github "sequel_pro",    "1.0.0"
github "skype",    "1.0.3"
github "charles",    "1.0.3",  :repo => "niclasnilsson/puppet-charles"
github "libreoffice",    "1.0.1", :repo => "gaishimo/puppet-libreoffice"
github "hipchat",    "1.0.7"
github "skitch",    "1.0.2"
github "kindle",    "1.0.1"
github "divvy",   "1.0.1"

github "imagemagick", "1.2.1"
github "gpg",   "0.0.4",     :repo => "steinim/puppet-gpg"
