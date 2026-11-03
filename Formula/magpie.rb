class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2881/magpie-cli-darwin-arm64"
      sha256 "41e26f0698af39697cb09d782dfdf7acd859f721435fd9f9456852dc01f04b73"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2881/magpie-cli-darwin-amd64"
      sha256 "7ecfdfa07d2d5f6c69dce3f7e5af70446879441c6a7db736b4672ed5f7988754"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2881/magpie-cli-linux-arm64"
      sha256 "b85322c62b790b130f46ff4e7b838a017c37f04507f37a855144f439b5783af2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2881/magpie-cli-linux-amd64"
      sha256 "5ea73ee0f5139661de76aa9052ade454e3582dd8833844031301f606fda2f16c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
