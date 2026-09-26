class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.128/magpie-cli-darwin-arm64"
      sha256 "2bc49c3035957e3e42f366b72da89acce003363d845c7814665c6d19b5587dbf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.128/magpie-cli-darwin-amd64"
      sha256 "0ea42fd1d5e72e4e800b581e54f428de7418cd84c641f38296456045a4e6246a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.128/magpie-cli-linux-arm64"
      sha256 "f1d9447d5e10deabd082e9f747ef35d2f00e0f6f6bfdb15eb89086287387f7f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.128/magpie-cli-linux-amd64"
      sha256 "910688f828151097a36f98fbfd75979735b3df0ce7fdd54c7b03bb90ce9c6793"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
