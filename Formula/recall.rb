# typed: false
# frozen_string_literal: true

class Recall < Formula
  desc "CLI to search and browse AI coding agent conversation history"
  homepage "https://github.com/peeomid/recall"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/peeomid/recall/releases/download/v0.1.0/recall_Darwin_x86_64.tar.gz"
      sha256 "ad0e2da615057b7d602de51b010dee2dd5a4d1cd478f4f43ece14c85a07d5aab"
    end
    if Hardware::CPU.arm?
      url "https://github.com/peeomid/recall/releases/download/v0.1.0/recall_Darwin_arm64.tar.gz"
      sha256 "2955498b9dfd984504bbef9e190ce18dd7ca11c2a84eaa8033a543d8f676b1cb"
    end
  end

  def install
    bin.install "recall"
  end
end
