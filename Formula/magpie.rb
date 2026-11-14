class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4150/magpie-cli-darwin-arm64"
      sha256 "21b14534eca39fc1971f36da4f33eb3e0bde99ccd2f15779aee858634a3d56ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4150/magpie-cli-darwin-amd64"
      sha256 "64ff876e64e33c6a9343f9514ee837864985649a6ddd2d13f0c7950314104dcb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4150/magpie-cli-linux-arm64"
      sha256 "b86d20c64b8898b338fc5388971a07c32f64ed0e27526cb7df8d84af02a9c34b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4150/magpie-cli-linux-amd64"
      sha256 "29376f5f37d80a96b328eb563452de18f602f6639437d72abc4181b5f6213e6d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
