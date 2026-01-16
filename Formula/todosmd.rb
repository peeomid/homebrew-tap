class Todosmd < Formula
  desc "Terminal-based task manager for Markdown files with vim keybindings"
  homepage "https://github.com/peeomid/todos.md"
  url "https://registry.npmjs.org/todosmd/-/todosmd-0.1.4.tgz"
  sha256 "e01b872d28983365783241322c58d0067b42eb394555487b2ed8ec20815ceab6"
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
