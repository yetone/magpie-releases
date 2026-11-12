class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3867/magpie-cli-darwin-arm64"
      sha256 "907cdfc09c2397b5ae4fb7e4984fa3a0a24c92b41b9a65db8ce78e58276fbfc2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3867/magpie-cli-darwin-amd64"
      sha256 "14fbb0e3cbabfbb6fba5932f615cfdd05e3e52c560e24776a2a0f9ba985c6f25"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3867/magpie-cli-linux-arm64"
      sha256 "6e584ec709493ce5d72ca45ba44a45966c8503bb0fcad245376a912bd823d572"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3867/magpie-cli-linux-amd64"
      sha256 "e6e7a37c506c5b35e66a773343625719eb9fbdfa50ac7920c422431ba7ad1a94"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
