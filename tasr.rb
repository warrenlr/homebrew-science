require "formula"

class tasr < Formula
  homepage "http://www.bcgsc.ca/platform/bioinfo/software/tasr"
  #doi "10.1371/journal.pone.0019816"
  #tag "Bioinformatics"
  url "http://www.bcgsc.ca/platform/bioinfo/software/tasr/releases/1.5.1/tasr_v1.5.1-tar.gz"
  version "1.5.1"
  sha1 "89e3661d139c2eff760c0bba98e578b9"

  def install
    bin.install "TASR"
    doc.install "TASR.readme"
    prefix.install "test", "tools"
  end

  test do
    system "TASR |grep TASR"
  end
end
