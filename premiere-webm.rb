cask :v1 => 'premiere-webm' do
  version '1.0.1'
  sha256 '68a2d856d545a4b7e3ccc39f5cbf635ed97d33322eac494b121c40bb32a69688'

  url 'http://www.fnordware.com/downloads/WebM_Premiere_v1.0.1.dmg'
  name 'WebM for Premiere'
  homepage 'http://www.fnordware.com/WebM/'
  license :oss

  pkg 'WebM Premiere.mpkg'
  uninstall 'com.fnordware.*'
end
