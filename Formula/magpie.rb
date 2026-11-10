class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3650/magpie-cli-darwin-arm64"
      sha256 "613f8e2f81af19c29b535564d305bf92bf994af3a592fbd713e8611b0b3f0f3f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3650/magpie-cli-darwin-amd64"
      sha256 "094fd5c62da653abef03efacea622f500ae8f05b5345294a3ba7b1209223deb7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3650/magpie-cli-linux-arm64"
      sha256 "4237b04ee44db6d72a8cb3930c97f29d21cbb28f3f1a635391763b7cbb08ce57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3650/magpie-cli-linux-amd64"
      sha256 "1abbff2605f65c7075b9f3d962165f7158ff759ff43d5617ba3f887e5fc769ea"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
