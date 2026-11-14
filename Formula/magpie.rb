class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4147/magpie-cli-darwin-arm64"
      sha256 "99fae49013731438ba34acfa60416c25968e1ac773c7df9b4dd9028ffa9375b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4147/magpie-cli-darwin-amd64"
      sha256 "6595f8da920ee7e46afd8d43ed302fa6c8a52832c02928fbec94a3d4aad0162b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4147/magpie-cli-linux-arm64"
      sha256 "422a17c34077ef627f6a1f64abfd3ece2cc17a26f3e1904cdf6cc1ac66bc1447"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4147/magpie-cli-linux-amd64"
      sha256 "9309fefa0d2c04bff72add12430ec6c6207fa28c0499feef29fcc99540194cc6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
