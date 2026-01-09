class Todosmd < Formula
  desc "Terminal-based task manager for Markdown files with vim keybindings"
  homepage "https://github.com/peeomid/todos.md"
  url "https://registry.npmjs.org/todosmd/-/todosmd-0.1.2.tgz"
  sha256 "84f8cd83ce1080ca8bba00e84bb28671d7a09eb9961b468a7062124c6c24ce11"
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
