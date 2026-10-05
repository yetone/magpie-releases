class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1069/magpie-cli-darwin-arm64"
      sha256 "b2dd1671e2a00b0203923b0a911131b6a89c085ff5ba3eaa3dc2c4a901f14f5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1069/magpie-cli-darwin-amd64"
      sha256 "fd00fbd769379749b3d8b014f4585bf00ec078f1d4bb51403b8691cd9972b132"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1069/magpie-cli-linux-arm64"
      sha256 "86231a2415df76320c6728e78935ba35b8f5717991d491cc88b9794be0df9994"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1069/magpie-cli-linux-amd64"
      sha256 "9d0bad63033c5e61b0a1417ed4082afecb5838299b4998ab613ff130a4becd8f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
