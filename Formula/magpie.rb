class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5023/magpie-cli-darwin-arm64"
      sha256 "1553908e3f054a31f3ab14c78a23fbf4025575f66459eb03aef597f85918ad7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5023/magpie-cli-darwin-amd64"
      sha256 "7397a6643ad1943636cb345c9105f5c2dd6de13a67a3b662470babf05fda678d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5023/magpie-cli-linux-arm64"
      sha256 "7354c1492b60fee7eb347a2f6ac298a120cb25e56169029575a0c360c5ffeb53"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5023/magpie-cli-linux-amd64"
      sha256 "d4b9dbe62814256b98da1eaf9896e5a2f9a69822c21933ac7805cc39a57987fa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
