class GitWatchtower < Formula
  desc "Terminal-based Git branch monitoring for AI coding agents"
  homepage "https://github.com/drummel/git-watchtower"
  url "https://registry.npmjs.org/git-watchtower/-/git-watchtower-2.2.3.tgz"
  sha256 "9771af050ad8fdad228a33d3b7d3e116278c5f9cdb03d1b91b3b3df52328c259"
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
