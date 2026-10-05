class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1032/magpie-cli-darwin-arm64"
      sha256 "2d301efa1d97f40e868f79c97c5fff5b8503b4a521858ee8e17b8c8d24bc51bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1032/magpie-cli-darwin-amd64"
      sha256 "a8d426660d23076d59d6e5875d7436d44a12c8c940664042d3eefd5daa40f1e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1032/magpie-cli-linux-arm64"
      sha256 "3307c4ad32009d8e4451f24f5d03f34b3dee889015b192f7e6f458aa2b3c3e07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1032/magpie-cli-linux-amd64"
      sha256 "e21c22c5beaed4ea6c0b57aaaa17bfefd9bb3f5a089b366110dc6e9f925537d9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
