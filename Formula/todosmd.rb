class Todosmd < Formula
  desc "Terminal-based task manager for Markdown files with vim keybindings"
  homepage "https://github.com/peeomid/todos.md"
  url "https://github.com/peeomid/homebrew-tap/releases/download/todosmd-v0.1.7/todosmd-0.1.7.tgz"
  sha256 "a39d0f2355e82f316dc183808bc92e050096a3dbec66fa02d4975642b4f2d85d"
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
