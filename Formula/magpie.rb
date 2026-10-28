class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1851/magpie-cli-darwin-arm64"
      sha256 "b67598dc821838661e9cc2fa906fc0875201dfe0c33474b35845c37f36473dd0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1851/magpie-cli-darwin-amd64"
      sha256 "c43aec24078f005ce60549161dc29874062338470cd1712e3bc0a5818cc3493e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1851/magpie-cli-linux-arm64"
      sha256 "ea9ad551bb6934a5b98015796b25c9092bcced0b35c980f69652bfa1e0ef801c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1851/magpie-cli-linux-amd64"
      sha256 "46b270387e4490c4ac1042251e222a1aa964ab4c6bec83ae4d6d45a7a7f7fec7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
