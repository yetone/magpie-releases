class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1968/magpie-cli-darwin-arm64"
      sha256 "f2d195a19e894fa7ad6b8ba775a60ed30fbb828d4efe1565a0273986119dff3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1968/magpie-cli-darwin-amd64"
      sha256 "7fb72606fe90836114825fc0d1c236d9b1ceb47fc7945d4f35182fa41ce30a7f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1968/magpie-cli-linux-arm64"
      sha256 "15d584c80e9a7ba49130ab1ffd455f0c09a6aa1b1fd5fb60da365b08d3324d77"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1968/magpie-cli-linux-amd64"
      sha256 "5e9ff1e7b07c96049ba6cab1a9eea45e598a8cbe207469fa5c8885478dcd843f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
