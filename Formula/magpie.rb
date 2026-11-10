class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3558/magpie-cli-darwin-arm64"
      sha256 "a03132233222720bead8d45b3e98617d4fb904deb61252249f611628fbb1393f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3558/magpie-cli-darwin-amd64"
      sha256 "2367be3de81558a323d827d93fc06e682d7458d9616683e11f9fa455ab0d6dfd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3558/magpie-cli-linux-arm64"
      sha256 "b6af485ba85bb7c82bc962ebe3f92406d3c5c83bc0d35a8aff85c772bc71a24e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3558/magpie-cli-linux-amd64"
      sha256 "0bbf7446fecd70e33cc1fedfa8137ee5c0c0ab69964680738ce51ef16a05ffbe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
