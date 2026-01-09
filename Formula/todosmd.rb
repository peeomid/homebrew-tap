class Todosmd < Formula
  desc "Terminal-based task manager for Markdown files with vim keybindings"
  homepage "https://github.com/peeomid/todos.md"
  url "https://registry.npmjs.org/todosmd/-/todosmd-0.1.1.tgz"
  sha256 "479a5d502582fe1931c046b179cbb25742738343fe95414a705b58f83717108b"
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
