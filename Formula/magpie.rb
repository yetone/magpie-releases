class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4050/magpie-cli-darwin-arm64"
      sha256 "63e7d8f7b2468af1807750a4c1e212e2acb2ab8179fd548b42b6567addf71c10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4050/magpie-cli-darwin-amd64"
      sha256 "89ca8fad68dfbf8adae0bbd074ff8757259a7deab219582fa8667803e14fb1b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4050/magpie-cli-linux-arm64"
      sha256 "5238d1eee7c88eef8e71ffb4b16d92e3d79cbf330af8c84bbc80f15c6c2e685b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4050/magpie-cli-linux-amd64"
      sha256 "c7212956eadc881a055e0aa788e08211d15606b7c4fe0f87ae6e8afd2e3aacdf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
