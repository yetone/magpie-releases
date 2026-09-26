class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.151/magpie-cli-darwin-arm64"
      sha256 "f5436b81aa19537a851034803930cf24c5e7478e8b676788482224c2d05bc37c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.151/magpie-cli-darwin-amd64"
      sha256 "c101fc9890b2f1e7950031dbe3a74421fb32c19b00c566ab7da4b68c9beb16ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.151/magpie-cli-linux-arm64"
      sha256 "1e9b141aae43dd18d2bc57e26503830dc712a9cb4aed1f67277723b8d3042140"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.151/magpie-cli-linux-amd64"
      sha256 "0a7c9c232ebc885edde460e13dbedc58b831bee2abb7f5b41bfad04cd82d6d7e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
