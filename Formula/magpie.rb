class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2873/magpie-cli-darwin-arm64"
      sha256 "844a5a1631a16a92355773eb71caebc5dcc469d3297bf79da15f7fce63176afa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2873/magpie-cli-darwin-amd64"
      sha256 "f74ff643c0e42ac96df0dd3af1ec7f380ffa1166735fb8a11c2a695774766ab7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2873/magpie-cli-linux-arm64"
      sha256 "ab8751b8e9fb342eec2544a511ce4725f364ad5a7a5d06aadc972e7252c5450a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2873/magpie-cli-linux-amd64"
      sha256 "90c1a6aab0fb0a62e0014ce5b8022477626f09ab00b140cdb1dd7efd41cb6711"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
