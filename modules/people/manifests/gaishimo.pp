class people::gaishimo {
  # 自分の環境で欲しいresourceをincludeする
  include dropbox
  include skype

  include java
  include chrome
  include opera
  include firefox
  include dropbox
  include sublime_text_2
  include sequel_pro
  include skype
  include charles
  include libreoffice
  include hipchat

  include foreman

  # install by homebrew
  package {
    [
      'libevent',
      'libtool',
      'mongodb',
      'memcached',
      'mysql',
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
    'XtraFinder':
      source   => "http://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg",
      provider => pkgdmg;
    'GoogleJapaneseInput':
      source => "http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg",
      provider => pkgdmg;
  }

}
