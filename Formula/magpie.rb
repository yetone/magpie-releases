class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4566/magpie-cli-darwin-arm64"
      sha256 "5ee680271abb18fddeb6efd33a6a9303f96815bf74d4ea3a03c8f49402b34349"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4566/magpie-cli-darwin-amd64"
      sha256 "dd53af94e0b2310aa2e044b9c6fa03f8ae294f8feb532d58414fb8e7eb18071a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4566/magpie-cli-linux-arm64"
      sha256 "534c8903469b5eb912fab86aabecc664a3028f15b9acddfbb9e66ff8426ce26b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4566/magpie-cli-linux-amd64"
      sha256 "39defdc4721d5609a1716f0e216f1eab2c9ce129c0bd0794c65416942e70ca89"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
