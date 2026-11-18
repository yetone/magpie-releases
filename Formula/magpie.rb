class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4403/magpie-cli-darwin-arm64"
      sha256 "1fab1600640f241f0b9bfe5c57aafaa16eba579f892471a21eb8f12b2c8e2f8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4403/magpie-cli-darwin-amd64"
      sha256 "838ac92e6a4dea116a08782c3864d6ccd2fd594f39d4a8c4143522cd7e335196"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4403/magpie-cli-linux-arm64"
      sha256 "c7974838af7650ab3afc1e02ea67fdef5099fc2e58f26841b58392d39ba260b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4403/magpie-cli-linux-amd64"
      sha256 "3c4a44b8ae4b4a20a27018a327804fcc89d5bdb3ed320974d4dbc11d804fc49f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
