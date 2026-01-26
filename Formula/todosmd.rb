class Todosmd < Formula
  desc "Terminal-based task manager for Markdown files with vim keybindings"
  homepage "https://github.com/peeomid/todos.md"
  url "https://registry.npmjs.org/todosmd/-/todosmd-0.1.6.tgz"
  sha256 "7447e6f182a39f24f0e69011828d502f2bdde1c5241914673175eb48efd06a66"
  license "MIT"

  depends_on "node@20"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system bin/"tmd", "--version"
  end
end
