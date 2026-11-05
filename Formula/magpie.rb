class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3066/magpie-cli-darwin-arm64"
      sha256 "2ecaa1c42d6abc9846b556bb5f4da7d3066dd4963f1c0dcf59dda61530593612"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3066/magpie-cli-darwin-amd64"
      sha256 "2200f710542067883aeb751af07f91e448ee718f30aa12db59983ffa1223af69"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3066/magpie-cli-linux-arm64"
      sha256 "702cf020cbb0bee46076bcb9ba3df3cb7b7eda15965a81b0e4f1129087c13a29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3066/magpie-cli-linux-amd64"
      sha256 "91723b45d7aaf31874b01ba3b1542f101bdef9ad1778f035ea4070d2d5e8a417"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
