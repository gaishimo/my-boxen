class people::gaishimo {

  $home     = "/Users/${::luser}"

  include osx::finder::empty_trash_securely
  include osx::no_network_dsstores
  include osx::software_update
  class { 'osx::dock::icon_size': 
    size => 36
  }

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

  include nginx

  include mysql
  include mongodb

  include chrome
  include opera
  include firefox
  include dropbox
#  include sublime_text_2
  include sublime_text_3
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
      'isl011',
      'libevent',
      'libtool',
      'memcached',
      'oniguruma',
      'redis',
      'tmux',
      'wget',
      'z',
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
  
  package {
   'zsh':
     install_options => [
       '--disable-etcdir'
     ];
  }
  file_line { 'add zsh to /etc/shells':
    path    => '/etc/shells',
    line    => "${boxen::config::homebrewdir}/bin/zsh",
    require => Package['zsh'],
    before  => Osx_chsh[$::luser];
  }
  osx_chsh { $::luser:
    shell   => "${boxen::config::homebrewdir}/bin/zsh";
  }

#  include sublime_text_3::package_control
#  sublime_text_3::package { 'Emmet':
#    source => 'sergeche/emmet-sublime'
#  }
#  sublime_text_3::package { 'Theme - Cobalt2':
#    source => 'wesbos/cobalt2'
#  }

  file {
    "/opt/boxen/bin/subl":
      ensure => link,  
      target => "/opt/boxen/bin/subl3";
  } 


}
