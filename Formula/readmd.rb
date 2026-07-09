class Readmd < Formula
  desc "Render Markdown into beautiful standalone HTML reading pages"
  homepage "https://github.com/peeomid/readmd"
  url "https://github.com/peeomid/readmd.git", tag: "v0.1.2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    (testpath/"note.md").write "# Hello\n"
    assert_match "<!doctype html>", shell_output("#{bin}/readmd #{testpath}/note.md --stdout")
  end
end
