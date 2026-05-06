class GitWatchtower < Formula
  desc "Terminal-based Git branch monitoring for AI coding agents"
  homepage "https://github.com/drummel/git-watchtower"
  url "https://registry.npmjs.org/git-watchtower/-/git-watchtower-2.3.20.tgz"
  sha256 "a03fa1f4df217a0da91be7a5acb6fff359f635f567329abdb056e9fa9c168307"
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
