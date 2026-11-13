class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3975/magpie-cli-darwin-arm64"
      sha256 "1a7307f3ec0014946b14a956c8e168ac95efaf6dc20fa8dc1f19c409a3ec0dac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3975/magpie-cli-darwin-amd64"
      sha256 "86865bba450eef52b1ae6abd4df3075a936a0864a4ef4dd841e8f5b1598a9bbc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3975/magpie-cli-linux-arm64"
      sha256 "37528be7bea88490cb2522dd525d59124b7a22fb078beabb5c5a2c9528bcb006"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3975/magpie-cli-linux-amd64"
      sha256 "5389855ba421d604a85c405f9863897b8292f7607b4ee42da8a87b474979d39f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
