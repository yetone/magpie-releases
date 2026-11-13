class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4051/magpie-cli-darwin-arm64"
      sha256 "cff62d467b3ad5f64d3a5a25871f6b78edcb232907fabd7acac6d021bbf1b83a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4051/magpie-cli-darwin-amd64"
      sha256 "99ab7f63a9daddb9de10a532d9454444bba5827457a983db90c5b6058f17a746"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4051/magpie-cli-linux-arm64"
      sha256 "ca4bfeb75f904b8f628bb0a1e388788674dc0965f199dcd7f882d4359b5c9705"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4051/magpie-cli-linux-amd64"
      sha256 "68b517fe2a08da1b2ae81a4d055ce12082ec9cdd29ddcf105431a1eb54c542f0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
