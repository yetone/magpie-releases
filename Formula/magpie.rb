class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2731/magpie-cli-darwin-arm64"
      sha256 "42f4b82701244245c2978ce3b532bf8608de855b676f735ba7a55011a3cf7981"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2731/magpie-cli-darwin-amd64"
      sha256 "335bdd67731e9653c959f01ee8bc8a7c50738d09049a04376960802829e93fab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2731/magpie-cli-linux-arm64"
      sha256 "09bd44c559a957091404bd8b7527e2af975fbf2ff14c3bc23d40c048ab04926c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2731/magpie-cli-linux-amd64"
      sha256 "f6daa1b579e8078f92e607c0555d7fa7679e85ade848a8083dac3c451b569ef9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
