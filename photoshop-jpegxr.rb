class PhotoshopJpegxr < Formula
  desc "A file-formats plug-in for the Mac version of Photoshop that enables the loading and saving of JPEGXR images."
  homepage "http://research.microsoft.com/en-us/downloads/2436bcaf-41b9-40b0-ac21-d8a3642ad399/default.aspx"
  url "http://ftp.research.microsoft.com/downloads/2436bcaf-41b9-40b0-ac21-d8a3642ad399/JPEGXR_Mac.zip"
  version "1.1"
  sha256 "ede372eb29ad9c56f6450cda459548aca15febaa9ae8f4857d523814583e34a2"

  def install
    doc.install Dir["#{buildpath}/*.rtf"]
    lib.install "JPEGXR.plugin"
  end

  def caveats; <<-EOS.undent
    Plug-in was installed to:
        #{lib}/JPEGXR.plugin

    Symlink the plug-in to use it in Adobe Photoshop:
      sudo ln -s "#{lib}/JPEGXR.plugin" "/Library/Application Support/Adobe/Plug-Ins/CC/File Formats"
    EOS
  end
end
