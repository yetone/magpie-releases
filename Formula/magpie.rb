class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3058/magpie-cli-darwin-arm64"
      sha256 "2f98a162412e6eade2995237d70b4b81da44f04b8cb5299a99323f77df009fd3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3058/magpie-cli-darwin-amd64"
      sha256 "9013be200713fa32d8d7d9d6cbf8b186c511c75eab074be59219c9b177f5bee8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3058/magpie-cli-linux-arm64"
      sha256 "eb505ffcc2f85c5b837a0bc68a58db2e8cc6b8027663341a96468eaef6a48fad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3058/magpie-cli-linux-amd64"
      sha256 "eaa88697065f8e9f393a27327031d5dcba04efefa9d9611ac38810e74f546ddc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
