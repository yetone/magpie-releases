class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2461/magpie-cli-darwin-arm64"
      sha256 "18b0c4afdd8cb5beb28a0e8fc7226622795b03362a5cefd3e1e4cbdae4b1ac31"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2461/magpie-cli-darwin-amd64"
      sha256 "77e056c1e89b8ea989e6dc70e92196233a67eac52640fed517ca5887f18c3e16"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2461/magpie-cli-linux-arm64"
      sha256 "34dcd4ed41a69fc416d5c38f91a6209b7a536c403c0113cbd8c068c1ed38593f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2461/magpie-cli-linux-amd64"
      sha256 "213e115ec7fa3a7a7c2d1035f7a2b8186bda4876ba6519d7e30e69ded6de1294"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
