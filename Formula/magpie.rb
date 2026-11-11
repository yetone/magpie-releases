class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3694/magpie-cli-darwin-arm64"
      sha256 "06480eb8c7bfc471dbc9beb0f3a72245b5d83f45dd99ef5b438f88e575c4a7f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3694/magpie-cli-darwin-amd64"
      sha256 "0bfbaba88c359413b5c0b0b1ba5e44902b1d5fe85c3e3b532e5fa82caa61d988"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3694/magpie-cli-linux-arm64"
      sha256 "5d35183ecef3cd9020bc2a43ffd4fc7c16c42d28703227f5d74e81691ea5a075"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3694/magpie-cli-linux-amd64"
      sha256 "1c45ee3c5a97c3561746354471b898045b12db630277d0407b423e6f25e44db2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
