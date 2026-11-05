class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3034/magpie-cli-darwin-arm64"
      sha256 "f8579e185bbadf9ed4a2e5764a72809948ad949d2e1689f69f44d68b599beb6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3034/magpie-cli-darwin-amd64"
      sha256 "70910441dc1cb6c80eca4122d79faf534405a4c683ae3bed6e2262e8f8e3da60"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3034/magpie-cli-linux-arm64"
      sha256 "3da00c17ac215bb3fd70324eb3b268b8e5bf68d9bd956c997122a84c55c8d242"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3034/magpie-cli-linux-amd64"
      sha256 "088d580edfb35ca95a53df709255bdeed42b7021d2db98d890eab2e9f3a9ab36"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
