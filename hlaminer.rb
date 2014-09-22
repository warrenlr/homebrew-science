require "formula"

class HLAminer < Formula
  homepage "http://www.bcgsc.ca/platform/bioinfo/software/hlaminer"
  #doi "10.1186/gm396"
  #tag "genomemedicine"
  url "http://www.bcgsc.ca/platform/bioinfo/software/hlaminer/releases/1.1/HLAminer.tar.gz"
  version "1.1.0"
  sha1 "5df39ea10a66ad5df1456b82e6ad3c050c10560e"

  def install
    bin.install "HLAminer.pl","formatdb","blastall","HPRArnaseq_classI-II.sh","HPRArnaseq_classI.sh","HPRAwgs_classI-II.sh","HPRAwgs_classI.sh","HPTASRrnaseq_classI-II.sh","HPTASRrnaseq_classI.sh","HPTASRwgs_classI-II.sh","HPTASRwgs_classI.sh","ncbiBlastConfig.tx","parseXMLblast.p","TASR
    doc.install "HLAminer_readme.txt", "TASR_readme.txt"
    prefix.install "docs", "bin","database","test-demo"
  end

  test do
    system "HLAminer |grep HLAminer"
  end
end
