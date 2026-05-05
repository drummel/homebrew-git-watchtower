class GitWatchtower < Formula
  desc "Terminal-based Git branch monitoring for AI coding agents"
  homepage "https://github.com/drummel/git-watchtower"
  url "https://registry.npmjs.org/git-watchtower/-/git-watchtower-2.3.17.tgz"
  sha256 "91b5ac88fbf2bdf318b1fb89f41078464b13138be826f9dcc4950f51069022ac"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-watchtower --version")
  end
end
