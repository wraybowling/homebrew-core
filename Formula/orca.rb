class Orca < Formula
  desc "Live Programming Environment"
  homepage "http://wiki.xxiivv.com/orca"
  url "https://github.com/hundredrabbits/Orca-c/archive/win32-bundle-test-1.tar.gz"
  sha256 "9ed6c8651413a300cbcfb0d3d353c48fd7a472df896366ff25dd5dfa06fea7f4"
  head "https://github.com/hundredrabbits/Orca-c.git"

  bottle :unneeded

  depends_on "ncurses" => :build
  depends_on "portmidi" => :build

  def install
    bin.install "orca"
  end

  test do
    assert_match "orca", shell_output("#{bin}/orca")
  end
end
