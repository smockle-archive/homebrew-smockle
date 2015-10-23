class PremiereVorbis < Formula
  desc "A plug-in for the Ogg Vorbis format to be used inside Adobe Premiere."
  homepage "https://github.com/fnordware/AdobeOgg"
  url "http://www.fnordware.com/downloads/Ogg_v0.5b6_mac.zip"
  version "0.5b6"
  sha256 "14fcd0423da20caf133e5fdbb550ce252ca7f7f70b6eea4dc9829d339901dc72"

  def install
    doc.install "Ogg v0.5b6/README.txt"
    lib.install "Ogg v0.5b6/Ogg Premiere.bundle"
    if File.exist? "/Library/Application\ Support/Adobe/Common/Plug-ins/7.0/MediaCore/Ogg\ Premiere.bundle"
      system "unlink", "/Library/Application\ Support/Adobe/Common/Plug-ins/7.0/MediaCore/Ogg\ Premiere.bundle"
    end
    system "ln", "-s", lib/"Ogg\ Premiere.bundle", "/Library/Application\ Support/Adobe/Common/Plug-ins/7.0/MediaCore"
  end

  test do
    File.exist? "/Library/Application\ Support/Adobe/Common/Plug-ins/7.0/MediaCore/Ogg\ Premiere.bundle"
  end
end
