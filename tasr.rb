class Tasr < Formula
  homepage "http://www.bcgsc.ca/platform/bioinfo/software/tasr"
  # doi "10.1371/journal.pone.0019816"
  # tag "bioinformatics"

  url "http://www.bcgsc.ca/platform/bioinfo/software/tasr/releases/1.6.1/tasr_v1-6-1.tar.gz"
  version "1.6.1"
  sha256 "f8f96b5d873629a7f907feb422e4f5c4eb99aa8610c482c2d606740159f583f3"

  bottle do
    cellar :any
    ###These need to be updated
    sha256 "3e5f480a3d5b9121acb526f8b444cd4b52f47698763c02fe65e07de1df70d1b5" => :yosemite
    sha256 "c3d1d87211da6d353c3aa88f5370baf6104474eecff571fc011d7c228d222349" => :mavericks
    sha256 "7707c5fcdf98f4ebf64e1f828dc824bf5b839571bf7b76c248e0d8275d001e1c" => :mountain_lion
  end

  def install
    bin.install "TASR"
    bin.install "TASR-Bloom"
    doc.install "TASR-readme.txt"
    prefix.install "test", "tools","lib"
  end

  test do
    system "#{bin}/tasr |grep tasr"
  end
end
