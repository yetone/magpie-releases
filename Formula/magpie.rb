class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4410/magpie-cli-darwin-arm64"
      sha256 "33f78762e7fa1758eb2b6d9f220d850f7fc2a045d47700cfda65913629e9de45"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4410/magpie-cli-darwin-amd64"
      sha256 "450d8bc44b741f7295766025abf7fd46e81c5a477092c4023fe4d77189fdb0e4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4410/magpie-cli-linux-arm64"
      sha256 "406eea64036430a9c3dec85d03dee949148f955622f64e5538161ab5ef15fa33"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4410/magpie-cli-linux-amd64"
      sha256 "c53a8fc110711100c214d7f3e76ace275f0be04e590111bd0d394f36938bcc4e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
