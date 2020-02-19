class Orca < Formula
  desc "Live Programming Environment(C Port)"
  homepage "https://wiki.xxiivv.com/site/orca.html"
  head "git@github.com:hundredrabbits/Orca-c.git"

  depends_on "cmake" => :build
  depends_on "portmidi"
  uses_from_macos "ncurses"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    assert_match "orca", shell_output("#{bin}/orca")
  end
end
