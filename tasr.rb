require "formula"

class tasr < Formula
  homepage "http://www.bcgsc.ca/platform/bioinfo/software/tasr"
  #doi "10.1371/journal.pone.0019816"
  #tag "Bioinformatics"
  url "http://www.bcgsc.ca/platform/bioinfo/software/tasr/releases/1.5.1/tasr_v1.5.1-tar.gz"
  version "1.5.1"
  sha1 "65bbd736d4e3b2acc10c5e8926c419c34a523217"

  def install
    bin.install "TASR"
    doc.install "TASR.readme"
    prefix.install "test", "tools"
  end

  test do
    system "TASR |grep TASR"
  end
end
