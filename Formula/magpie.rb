class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4354/magpie-cli-darwin-arm64"
      sha256 "d962ecf58280f792deacfdf6c0bcbff6285bcc220ae53ac0add39420e322bc82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4354/magpie-cli-darwin-amd64"
      sha256 "ccdc013d78b30ebe9f457fb039970f843e70736716fb860f0b0f9fdca5abfe41"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4354/magpie-cli-linux-arm64"
      sha256 "5be830654ee5eb3e6b7eef6c6695c47b330c82f6b77e0b848f6ec6610862a675"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4354/magpie-cli-linux-amd64"
      sha256 "dfb5e5144008cbe4ae97a93049cbef8ad848ea8c5103a87b06e34d3c31ed36e0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
