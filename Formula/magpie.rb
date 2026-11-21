class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4644/magpie-cli-darwin-arm64"
      sha256 "8eabbc93b0c1bef565537c87aba4d86b3c4b1d27987c60a9b6b912723493df99"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4644/magpie-cli-darwin-amd64"
      sha256 "3afb61149cc7b283c7f70fd56111a19536b352878d4ae12de0dbcc14bf989ab2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4644/magpie-cli-linux-arm64"
      sha256 "10bb743c913d115f277e29fec4490077c6b32fed822dfe979fec682cf998d392"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4644/magpie-cli-linux-amd64"
      sha256 "a277fcd524b8a58aec4c20afbb2a76415f422e6f873f1700d7678ff2e0934efe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
