class people::gaishimo {
  # 自分の環境で欲しいresourceをincludeする
  include dropbox
  include skype

  include java
  include virtualbox
  include vagrant

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

  include gpg


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
#    'XtraFinder':
#     source   => "http://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg",
#      provider => pkgdmg;
    'GoogleJapaneseInput':
      source => "http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg",
      provider => pkgdmg;
    'Kobito':
      source => "http://kobito.qiita.com/download/Kobito_v1.6.1.zip",
      provider => compressed_app;
    'MacVim-KaoriYa':
      source  => "https://macvim-kaoriya.googlecode.com/files/macvim-kaoriya-20130911.dmg",
      provider => appdmg;
   }

}
