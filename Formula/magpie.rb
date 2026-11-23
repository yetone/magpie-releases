class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4707/magpie-cli-darwin-arm64"
      sha256 "aa3e2fcbf225176c44eb770bdd1aa7641438130b102fd53afcf631c1ad87221b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4707/magpie-cli-darwin-amd64"
      sha256 "dd523198bb546daac6ad9fc2473e6e47dd92a3bb034f19bfa75c9657d68bafc6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4707/magpie-cli-linux-arm64"
      sha256 "e809a788bdf453bab6c002f0cd6005c4daf53908b18844b539e153b90192bea0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4707/magpie-cli-linux-amd64"
      sha256 "298c5771b43443fd96e4e49059e5e1ba9a33eb0865f59703f7d05c85998a05c7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
