class Prj < Formula
  desc "Local git repository scanner & project dashboard for the terminal"
  homepage "https://github.com/peeomid/prj"
  version "0.1.0"
  license "MIT"

  if Hardware::CPU.intel?
    url "https://github.com/peeomid/prj/releases/download/v0.1.0/prj_Darwin_x86_64.tar.gz"
    sha256 "cfb4b944b2256adad7921513891e79da6c08851892a583f2b8f5ff2d094eef87"

    def install
      bin.install "prj_Darwin_x86_64" => "prj"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/peeomid/prj/releases/download/v0.1.0/prj_Darwin_arm64.tar.gz"
    sha256 "9309e5caa209df1f50da067ab0a47cff8aebe24cd61c61bdc17b98d9bd6c3079"

    def install
      bin.install "prj_Darwin_arm64" => "prj"
    end
  end

  test do
    assert_match "prj version", shell_output("#{bin}/prj --version")
  end
end
