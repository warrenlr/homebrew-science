require "formula"

class Ssake < Formula
  homepage "http://www.bcgsc.ca/platform/bioinfo/software/ssake"
  #doi "10.1093/bioinformatics/btl629"
  #tag "bioinformatics"
  url "http://www.bcgsc.ca/platform/bioinfo/software/ssake/releases/3.8.2/ssake_v3-8-2.tar.gz"
  version "3.8.2"
  sha1 "b9e2090198ec1b51eeb984088980f07eba1e1f4a"

  def install
    bin.install "SSAKE"
    doc.install "SSAKE.pdf", "SSAKE.readme"
    prefix.install "test", "tools"
  end

  test do
    system "SSAKE |grep SSAKE"
  end
end
