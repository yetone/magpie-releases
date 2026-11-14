class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4193/magpie-cli-darwin-arm64"
      sha256 "68bd3cc01f0f79ef0a44ef54e72e35abb9c107085045229bbd441fae671cc7d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4193/magpie-cli-darwin-amd64"
      sha256 "7dff43ee8b9aef62af30397ef353e6e7fdf31608de0b31dee6a42960c7c29444"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4193/magpie-cli-linux-arm64"
      sha256 "03b5c871e97c7ec2bd4ee20acd35336104d276e0b73477fc78310619ead7c199"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4193/magpie-cli-linux-amd64"
      sha256 "d68c579b785c840d751f61350fc452e6e8e740adee8f5fb3f167179962b56e02"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
