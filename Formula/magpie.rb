class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4385/magpie-cli-darwin-arm64"
      sha256 "871ee824ae41c3deca0b8dc676904ff604ceb2818e9823f99b78bee2cee05d88"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4385/magpie-cli-darwin-amd64"
      sha256 "67a8e47d1a901012ca7868b8f6c56a03edbd0a16272df2b06d51cac1aa37a200"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4385/magpie-cli-linux-arm64"
      sha256 "819e26b14634c921ce1fbe46affc90d099fb210198696995f614826868cbce1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4385/magpie-cli-linux-amd64"
      sha256 "5d95d96e31b6dfeceeba037bd7cad895a07d7f00c2531a6716c270b6a5f6b44f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
