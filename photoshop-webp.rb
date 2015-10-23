class PhotoshopWebp < Formula
  desc "A plug-in for Google's WebP format to be used inside Adobe Photoshop."
  homepage "https://github.com/fnordware/AdobeWebM"
  url "http://www.fnordware.com/downloads/WebP_v0.5b7_mac.zip"
  version "0.5b7"
  sha256 "9f62f14e8db84a7e8ed4426036bb1959146d967171d22c35455fa38ae6f717c5"

  def install
    ohai Dir["#{buildpath}/*"]
    doc.install "README.txt"
    lib.install "WebP.plugin"
    if File.exist? "/Applications/Adobe\ Photoshop\ CC\ 2015/Plug-ins/File\ Formats/WebP.plugin"
      system "unlink", "/Applications/Adobe\ Photoshop\ CC\ 2015/Plug-ins/File\ Formats/WebP.plugin"
    end
    system "ln", "-s", lib/"WebP.plugin", "/Applications/Adobe\ Photoshop\ CC\ 2015/Plug-ins/File\ Formats"
  end

  test do
    File.exist? "/Applications/Adobe\ Photoshop\ CC\ 2015/Plug-ins/File\ Formats/WebP.plugin"
  end
end