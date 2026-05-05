class GitWatchtower < Formula
  desc "Terminal-based Git branch monitoring for AI coding agents"
  homepage "https://github.com/drummel/git-watchtower"
  url "https://registry.npmjs.org/git-watchtower/-/git-watchtower-2.3.15.tgz"
  sha256 "5f097e779bcd1d3b9378e29c2e89429b4e08fddc7692f092f3a89d04888d71d9"
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
