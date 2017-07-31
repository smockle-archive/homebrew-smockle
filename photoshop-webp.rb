class PhotoshopWebp < Formula
  desc "A plug-in for Google's WebP format to be used inside Adobe Photoshop."
  homepage "https://github.com/fnordware/AdobeWebM"
  url "http://www.fnordware.com/downloads/WebP_v0.5b7_mac.zip"
  version "0.5b7"
  sha256 "9f62f14e8db84a7e8ed4426036bb1959146d967171d22c35455fa38ae6f717c5"

  def install
    doc.install "WebP v0.5b7/README.txt"
    lib.install "WebP v0.5b7/WebP.plugin"
    if File.exist? "/Library/Application\ Support/Adobe/Plug-Ins/CC/File\ Formats/WebP.plugin"
      system "sudo", "unlink", "/Library/Application\ Support/Adobe/Plug-Ins/CC/File\ Formats/WebP.plugin"
    end
    system "sudo", "ln", "-s", lib/"WebP.plugin", "/Library/Application\ Support/Adobe/Plug-Ins/CC/File\ Formats/WebP.plugin"
  end

  test do
    File.exist? "/Library/Application\ Support/Adobe/Plug-Ins/CC/File\ Formats/WebP.plugin"
  end
end
