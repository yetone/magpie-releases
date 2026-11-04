class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2907/magpie-cli-darwin-arm64"
      sha256 "ec436facc0314a162b13a8f25cc1dbf0e86a1ef7198dfd85cde6af1ea58fdfba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2907/magpie-cli-darwin-amd64"
      sha256 "7b2694ea860446039c0e0ae36d4767b901189e717e56daa36c2fbcb73e08b68d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2907/magpie-cli-linux-arm64"
      sha256 "f0813a98b3e75cdccd8dc0bdc6e7be48c1e57fe672918755857b4bae07791441"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2907/magpie-cli-linux-amd64"
      sha256 "6543f0e747a2d834167ee434b71e90ef2545ebd5ff8c9bfe715e9f9a526ecbfa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
