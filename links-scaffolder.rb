class LinksScaffolder < Formula
  homepage "http://www.bcgsc.ca/platform/bioinfo/software/links"
  # doi "10.1186/s13742-015-0076-3"
  # tag "bioinformatics"

  url "http://www.bcgsc.ca/platform/bioinfo/software/links/releases/1.6.1/links_v1-6-1.tar.gz"
  version "1.6.1"
  sha256 "9c304961a04a746644a0253b710793680ef6fb9839f0b1cefaac75c3b4c6b65c"

  depends_on "BloomFilter" => :perl

  def install
    bin.install "LINKS"
    chmod 0644, "LINKS-readme.txt"
    doc.install "LINKS-readme.txt"
    chmod 0644, "LINKS-readme_v1-6.pdf"
    doc.install "LINKS-readme_v1-6.pdf"
    prefix.install "test"
    prefix.install "tools"
    prefix.install "lib"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/LINKS", 255)
  end
end
