class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1026/magpie-cli-darwin-arm64"
      sha256 "fd98fc90a3dae754dcd88906699f3d405fd24775583d74639ba3787492af08fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1026/magpie-cli-darwin-amd64"
      sha256 "94d88e2dc4f9a23e4172e0852eecc35597de9a39308d4cffde71a3c3acfb869b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1026/magpie-cli-linux-arm64"
      sha256 "2647db0575b3cbcd426555ea05f2eeda354b6ed80a832cd9e8f3b7ac34fc1272"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1026/magpie-cli-linux-amd64"
      sha256 "02a3585d5dfcc900c6bc30e70103aa7ff11a4cce06475f7369023a2e216a3b94"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
