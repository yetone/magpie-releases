class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2351/magpie-cli-darwin-arm64"
      sha256 "67e641e7e5b02a86650483672112e2cf6e8834a82f92b69535c9eb33d206d021"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2351/magpie-cli-darwin-amd64"
      sha256 "f210ea04696a42f9aadeab579dcc6a9248857c08961a25a7d54b07cc4def5781"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2351/magpie-cli-linux-arm64"
      sha256 "3a65cdae6f66c9abcee819539ed7f1983e3cb00eb8493a02a32f50659407579f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2351/magpie-cli-linux-amd64"
      sha256 "f00ba446e41cb4907058a9755e5e8ca623c7551b07233436a5437836a335d233"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
