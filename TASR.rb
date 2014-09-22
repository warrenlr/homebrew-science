require "formula"

class TASR < Formula
  homepage "http://www.bcgsc.ca/platform/bioinfo/software/tasr"
  #doi "10.1371/journal.pone.0019816"
  #tag "PLOSone"
  url "http://www.bcgsc.ca/platform/bioinfo/software/tasr/releases/1.5.1/tasr_v1.5.1-tar.gz"
  version "1.5.1"
  sha1 "5df39ea10a66ad5df1456b82e6ad3c050c10560e"

  def install
    bin.install "TASR"
    doc.install "TASR.readme"
    prefix.install "test", "tools"
  end

  test do
    system "TASR |grep TASR"
  end
end
