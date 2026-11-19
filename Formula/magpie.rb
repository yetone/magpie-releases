class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4521/magpie-cli-darwin-arm64"
      sha256 "06371bc3df1b9fbbc4e270386bec0ceabcd3e21ef48652f4d7d06dbf8597d3be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4521/magpie-cli-darwin-amd64"
      sha256 "0d1a3d3b24791315e46883043342838d2259d7006dc40f2ad253f35882155903"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4521/magpie-cli-linux-arm64"
      sha256 "3e7423db436b7b1a970aaf2c8ff99fbafb4a083cef3c18c853055e7310e830e7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4521/magpie-cli-linux-amd64"
      sha256 "ecc396caca3cf8d5db71950d602d827008363b405f52deb2752e4f8531e6415b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
