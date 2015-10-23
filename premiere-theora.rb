class PremiereTheora < Formula
  desc "A plug-in for the Ogg Theora format to be used inside Adobe Premiere."
  homepage "https://github.com/fnordware/AdobeOgg"
  url "http://www.fnordware.com/downloads/Theora_v0.5b5_mac.zip"
  version "0.5b5"
  sha256 "b58589a6dc74338cf005af4057116b3bedb110ef64e3348a86daf96115345bdb"

  def install
    doc.install "Theora v0.5b5/README.txt"
    lib.install "Theora v0.5b5/Theora Premiere.bundle"
    if File.exist? "/Library/Application\ Support/Adobe/Common/Plug-ins/7.0/MediaCore/Theora\ Premiere.bundle"
      system "unlink", "/Library/Application\ Support/Adobe/Common/Plug-ins/7.0/MediaCore/Theora\ Premiere.bundle"
    end
    system "ln", "-s", lib/"Theora\ Premiere.bundle", "/Library/Application\ Support/Adobe/Common/Plug-ins/7.0/MediaCore"
  end

  test do
    File.exist? "/Library/Application\ Support/Adobe/Common/Plug-ins/7.0/MediaCore/Theora\ Premiere.bundle"
  end
end
