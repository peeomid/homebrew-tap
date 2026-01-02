class Todosmd < Formula
  desc "Terminal-based task manager for Markdown files with vim keybindings"
  homepage "https://github.com/peeomid/todos.md"
  url "https://registry.npmjs.org/todosmd/-/todosmd-0.1.0.tgz"
  sha256 "11706010f5c5d654f9a0749c398f9dc2df1e4add02363ef18e672e4629a579c6"
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
