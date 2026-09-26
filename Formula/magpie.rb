class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.150/magpie-cli-darwin-arm64"
      sha256 "abd6c194bd647352ce6d4269846a2c71570aa6b1270ef428e417dc614476a735"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.150/magpie-cli-darwin-amd64"
      sha256 "0c40d8f3e280b4866ec5fbcf379f4c25d79ed9890051e05006e24f6a0a77d629"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.150/magpie-cli-linux-arm64"
      sha256 "385a8f5687089f5e4491d56ab7c2e45fd9e710c9153dc972775e0e8bf6779f02"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.150/magpie-cli-linux-amd64"
      sha256 "0a74751413c79ae40aaacffeae02343e0c3637dd3c2dea99eb5cfd47e83303fc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
