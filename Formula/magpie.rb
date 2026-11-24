class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4753/magpie-cli-darwin-arm64"
      sha256 "e62e7414495841e52fb34666817be25c9b3f766cecf24d4c463143bdcd8a4f89"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4753/magpie-cli-darwin-amd64"
      sha256 "c8d105655b401586338119fb475591da3f7bf233f6583bc02292616d4b24bc7d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4753/magpie-cli-linux-arm64"
      sha256 "1cf4b5e95cb0626b6d86f52756f8f5182287863c41b9f020155c44cda599ffe4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4753/magpie-cli-linux-amd64"
      sha256 "94db348e1f36382aa620fcc92bdb03dfad15da8c1629c216d21f181807c6494d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
