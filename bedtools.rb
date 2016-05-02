class Bedtools < Formula
  desc "bedtools: A powerful toolset for genome arithmetic"
  homepage "https://github.com/arq5x/bedtools2"
  # doi "10.1093/bioinformatics/btq033"
  # tag "bioinformatics"

  url "https://github.com/arq5x/bedtools2/archive/v2.25.0.tar.gz"
  sha256 "159122afb9978015f7ec85d7b17739b01415a5738086b20a48147eeefcf08cfb"

  head "https://github.com/arq5x/bedtools2.git"

  bottle do
    cellar :any_skip_relocation
    revision 1
    sha256 "80327fefdeb4e62c8c8ca63a952280770d18ee13dcda3cdbaa7d665ac22fdf3d" => :el_capitan
    sha256 "ac21a1867ba547bac8f920289e26184115a0b0171b4e3ff3d7aada4fee5c8006" => :yosemite
    sha256 "c11b62597d927e97a3e66875519cc1f28f39afb31fd68a423498282bb357583e" => :mavericks
  end

  def install
    system "make"
    prefix.install "bin"
    doc.install %w[README.md RELEASE_HISTORY]
  end

  test do
    system "#{bin}/bedtools", "--version"
  end
end
