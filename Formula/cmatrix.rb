class Cmatrix < Formula
  desc "Console Matrix (astyfoo fork)"
  homepage "https://github.com/yourusername/cmatrix"
  head "https://github.com/yourusername/cmatrix.git", branch: "master"
  license "GPL-3.0-or-later"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  uses_from_macos "ncurses"

  def install
    system "autoreconf", "-i"
    system "./configure", "--prefix=#{prefix}", "--mandir=#{man}"
    system "make"
    system "make", "install"
  end

  test do
    system bin/"cmatrix", "-V"
  end
end
