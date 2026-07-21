class GitWatchtower < Formula
  desc "Terminal-based Git branch monitoring for AI coding agents"
  homepage "https://github.com/drummel/git-watchtower"
  url "https://registry.npmjs.org/git-watchtower/-/git-watchtower-2.7.0.tgz"
  sha256 "62b0633da4155c4ef4cfb5497ae2c5aa7ba6d22901fb76c2caa088e39d9dfe05"
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
