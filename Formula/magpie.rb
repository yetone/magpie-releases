class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4195/magpie-cli-darwin-arm64"
      sha256 "d47fcb7f1853ee0a1a09c24ec07b8fcf8444be3a2de0a6b5295e953c0304469a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4195/magpie-cli-darwin-amd64"
      sha256 "53569b67554d5288f48bdb168e8b925087c351f505c99584191294e4f80f2ecd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4195/magpie-cli-linux-arm64"
      sha256 "d774c6edad5fe424455de276f3b2c27d7f151a9ad03e1b02712bcc22dad69450"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4195/magpie-cli-linux-amd64"
      sha256 "2bd644296965f577bc204d3e1cc83cf75487e1acd1ec9bd6acfe3552f27e23ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
