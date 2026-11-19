class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4512/magpie-cli-darwin-arm64"
      sha256 "dbf8aba9316e99882b3c30b20414759afcd4ce7d3bfb009bde99455bb88104f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4512/magpie-cli-darwin-amd64"
      sha256 "40c9e4cd81d8e8f8f9510bdd67edca88ebf2dbf099b73253d2d1d5c6c04722b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4512/magpie-cli-linux-arm64"
      sha256 "78260719710840776136c164b464ac999d0c979e0652252a01915f54b32d5e4f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4512/magpie-cli-linux-amd64"
      sha256 "5238e666dce88a951c757d53bcd074fc063e59a7fe0bb3981932f5e2286e7cb5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
