class Jpegxr < Formula
  desc "A file-formats plug-in for the Mac version of Photoshop that enables the loading and saving of JPEGXR images."
  homepage "http://research.microsoft.com/en-us/downloads/2436bcaf-41b9-40b0-ac21-d8a3642ad399/default.aspx"
  url "http://ftp.research.microsoft.com/downloads/2436bcaf-41b9-40b0-ac21-d8a3642ad399/JPEGXR_Mac.zip"
  version "1.1"
  sha256 "ede372eb29ad9c56f6450cda459548aca15febaa9ae8f4857d523814583e34a2"

  def install
    system "unzip", Dir["JPEGXR_Mac.zip"]
    system "cp", "-Rf", Dir["JPEGXR_Mac.plugin"], "/Applications/Adobe\ Photoshop\ CC\ 2015/Plug-ins/File\ Formats/"
  end

  test do
    File.exist? "/Applications/Adobe\ Photoshop\ CC\ 2015/Plug-ins/File\ Formats/JPEGXR_Mac.plugin"
  end
end
