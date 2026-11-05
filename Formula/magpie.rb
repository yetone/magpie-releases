class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3005/magpie-cli-darwin-arm64"
      sha256 "b85f8d53cba41fff18767df01c781b2a304d9a765a696ddc7dcb09e430082284"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3005/magpie-cli-darwin-amd64"
      sha256 "1cf2fd21e15cfc748b2bcad86188fe59ddf3d4dc9014cabc04fca2e483203c62"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3005/magpie-cli-linux-arm64"
      sha256 "f1fd9a5a611a39a280310ba2ce960a2780001d79f06c4178913235dfb9fb07cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3005/magpie-cli-linux-amd64"
      sha256 "d2c9b0a30303710e623bd5c5cd82b24860dc24c3d0743c104be9d62c256430d7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
