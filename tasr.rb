require "formula"

class Tasr < Formula
  homepage "http://www.bcgsc.ca/platform/bioinfo/software/tasr"
  #doi "10.1371/journal.pone.0019816"
  #tag "bioinformatics"
  url "http://www.bcgsc.ca/platform/bioinfo/software/tasr/releases/1.5.1/tasr_v1-5-1.tar.gz"
  version "1.5.1"
  sha1 "e2f8feca3092b7a504c7272d513aaf1dfbe9c10b"

  def install
    bin.install "TASR"
    doc.install "TASR.readme"
    prefix.install "test", "tools"
  end

  test do
    system "#{bin}/tasr |grep tasr"
  end
end
