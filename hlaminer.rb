class Hlaminer < Formula
  homepage "http://www.bcgsc.ca/platform/bioinfo/software/hlaminer"
  # doi "10.1186/gm396"
  # tag "bioinformatics"

  url "http://www.bcgsc.ca/platform/bioinfo/software/hlaminer/releases/1.3/HLAminer_v1-3.tar.gz"
  version "1.3.0"
  sha256 "3c30ff02df31a839968c6694b3bed404c262a51fe2830711642e2210f00e68bb"

  bottle do
    cellar :any
    ###These need to be updated
    sha256 "100293fce1617b7ea2dd05e7ac4c0f215765a3be80d109e87168e67ceae7a527" => :yosemite
    sha256 "6eb37791b21c0c5cc1c6f446cb82561ca8f9b876be72f3bc296ca77de6ad8230" => :mavericks
    sha256 "30f704aa898b243cc0fea2ef1c70f8602a88c41422548881703f3647f336a21d" => :mountain_lion
  end

  depends_on "blast"
  depends_on "tasr"

  def install
    # Conflicts with tasr
    rm "bin/TASR"

    prefix.install Dir["*"]
  end

  test do
    system "#{bin}/HLAminer.pl |grep hlaminer"
  end
end
