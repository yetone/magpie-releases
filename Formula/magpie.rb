class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4076/magpie-cli-darwin-arm64"
      sha256 "10ab29714ae84ce527187586118af491c66d486faa51f04b838fa8b4fd405838"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4076/magpie-cli-darwin-amd64"
      sha256 "f12c9de9487dc2eef9a9c50cf89d6e5e6bfdce6f571dd177a14541e8b400c4dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4076/magpie-cli-linux-arm64"
      sha256 "9a3511dc91d04dc9062903059c7c55238c291dca304e4aabc22cb5ee6007b6fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4076/magpie-cli-linux-amd64"
      sha256 "0a8dbb4b9470a92bbd42c17e1e85b8f7755be15640a9d2e807f6a32da4922da3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
