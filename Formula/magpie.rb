class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2683/magpie-cli-darwin-arm64"
      sha256 "4d72f040908102172a92a3983e1a1ab58132e3ef3b564931359bede62b1a8a83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2683/magpie-cli-darwin-amd64"
      sha256 "47e5cf89eb4ec2b38591668d6f574e82452c5ec86a00ca1037594e37eeceed40"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2683/magpie-cli-linux-arm64"
      sha256 "a8898c8e1197b122564782cd03694e8eb1e2d7ba24ba96c851c6692d1e69e042"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2683/magpie-cli-linux-amd64"
      sha256 "6a25ec6f479cc7175659174c076ad9d67c1b2e76d9471079eedc09004320953f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
