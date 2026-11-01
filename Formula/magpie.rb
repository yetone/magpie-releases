class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2598/magpie-cli-darwin-arm64"
      sha256 "70d16a98acbcf05f15abd688b5e54d5c45c47b77e86d484b834b12111f440f42"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2598/magpie-cli-darwin-amd64"
      sha256 "62b537d95851cbd20079e346c5f2dcf8661df39f7d8a2a1e6e7232009fbb5c2c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2598/magpie-cli-linux-arm64"
      sha256 "a858e9e9b55f558e2f5550c78b19c3f79dee1eea90f8adeaa4ffceed7adcd80f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2598/magpie-cli-linux-amd64"
      sha256 "5014501e293b2489980fe3da321699f8a9a722abd630f10ba6766b0c2843bd1b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
