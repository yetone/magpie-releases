class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2999/magpie-cli-darwin-arm64"
      sha256 "b05cee82352fdc497035bd93f55053cf8978c28fa56f2d75b73a0298f4cdc58e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2999/magpie-cli-darwin-amd64"
      sha256 "9c0411433568caa8d1f30075c7101b70987474d40f3065cd76e483fba505b91b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2999/magpie-cli-linux-arm64"
      sha256 "0e811385cd68eaa4c5604c60af768ce713e7d786bbdd7bab3c24169dfff4c9a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2999/magpie-cli-linux-amd64"
      sha256 "2486d33f0565d9d66d4f7480c29bc3bf4e647550dddb63f4c2a52140cb9b2584"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
