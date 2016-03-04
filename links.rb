class Links < Formula
  homepage "http://www.bcgsc.ca/platform/bioinfo/software/links"
  #doi "10.1101/016519"
  #tag "bioinformatics"

  url "http://www.bcgsc.ca/platform/bioinfo/software/links/releases/1.1/links_v1-1.tar.gz"
  version "1.1"
  sha1 "b817bba5b1087bbbadcc151d213312e3cd1867eb"

  def install
    bin.install "LINKS"
    doc.install "LINKS-readme.txt"
    prefix.install "test"
  end

  test do
    system "LINKS |grep LINKS"
  end
end
