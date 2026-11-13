class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4087/magpie-cli-darwin-arm64"
      sha256 "f1952267e1325140cef47165ce6bda1fbaa3a4c6e6deaf6165f30dfcb9eb983a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4087/magpie-cli-darwin-amd64"
      sha256 "c9b6617d6dbc6f20048a850c8bc58a32c1a1fd5e08335186ab86aba72f91ccd8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4087/magpie-cli-linux-arm64"
      sha256 "e8ffcc4af1d9c5719cc47b6cf782e8e90616f557d29b49dc31cc2c4ef3c4a8ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4087/magpie-cli-linux-amd64"
      sha256 "db5e9f0ffc3a1957791f98b6377ae862fd9f04c6b2bc7bbc6f448d6dc2b94c50"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
