class people::gaishimo {
  class { 'ruby::global':
    version => '2.0.0-p247'
  }
  ruby::version { '1.9.3-p194': }
  ruby::plugin {
    'rbenv-vars':
      ensure => 'v1.2.0',
      source => 'sstephenson/rbenv-vars'
  }
  $version = '2.0.0-p247'
  ruby::gem{
    "pry for ${version}":
      gem => 'pry',
      ruby => $version,
      version => '>= 0.9'
  }

  include dropbox
  include skype

  include java
  include virtualbox
  include vagrant

#  include mysql
  include mongodb

  include chrome
  include opera
  include firefox
  include dropbox
#  include sublime_text_2
#  include sublime_text_3
  include iterm2::stable

  include sequel_pro
  include skype
  include charles
  include libreoffice
  include hipchat
  include skitch
  include foreman
  include kindle
  include divvy
  include gpg
  

  # install by homebrew
  package {
    [
      'isl011',
      'libevent',
      'libtool',
#      'mongodb',
#      'mysql',
      'memcached',
      'oniguruma',
      'redis',
      'tmux',
      'wget',
      'z',
      'zsh',
      'ImageMagick'
    ]:
   }

  package {
    'GoogleJapaneseInput':
      source => "http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg",
      provider => pkgdmg;
    'Kobito':
      source => "http://kobito.qiita.com/download/Kobito_v1.6.1.zip",
      provider => compressed_app;
    'MacVim-KaoriYa':
      source  => "https://macvim-kaoriya.googlecode.com/files/macvim-kaoriya-20130911.dmg",
      provider => appdmg;
    'ClipMenu':
      source => "https://dl.dropbox.com/u/1140644/clipmenu/ClipMenu_0.4.3.dmg",
      provider => appdmg;
  }

}
