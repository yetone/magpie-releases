class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2095/magpie-cli-darwin-arm64"
      sha256 "a6d657b24ec160e32582968509f794c272a95c9a7fc664b6d638ba15351936d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2095/magpie-cli-darwin-amd64"
      sha256 "e192e9ef065a27faac0ea8d7a52cf10bb762b78efcaec01d58eb74ae966163ad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2095/magpie-cli-linux-arm64"
      sha256 "f04572ff0c024266a5550759c5a33b0daf5f8d7404c04494f4002c2794232cba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2095/magpie-cli-linux-amd64"
      sha256 "285036aa59b1e245c23629fefb32c0a0f0fc551260c1c854487a9e7c2b25b4ea"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
