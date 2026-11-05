class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3019/magpie-cli-darwin-arm64"
      sha256 "b05e76d555768764c86befe6c78100a08da76e34f614522ddc080244a5721d92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3019/magpie-cli-darwin-amd64"
      sha256 "8dc7cd3c3e67ea2c9ba787c2dc8c53d7b0e96c26317c646bc335f4dbf25c3d73"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3019/magpie-cli-linux-arm64"
      sha256 "19458dde27b118d1bf5c35379413aef345fe79f5dd9cb554af9945bc2daf84db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3019/magpie-cli-linux-amd64"
      sha256 "f62accd06e18e9801cd60c1f962380870030a5e2567c2b1cdc05a4defc2122ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
