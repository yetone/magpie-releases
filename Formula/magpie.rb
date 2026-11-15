class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4272/magpie-cli-darwin-arm64"
      sha256 "d409c879c5679717ca4bf934bf37d45a40643123be02df1ac4a572cc9959557b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4272/magpie-cli-darwin-amd64"
      sha256 "5ee410a6eece0808aefdfb061c47996bae6dab04de324b4de9bf37d9f6aa88de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4272/magpie-cli-linux-arm64"
      sha256 "875751438992a6f3fefac08cf0a7245896f105c164827941beaecfb25c866543"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4272/magpie-cli-linux-amd64"
      sha256 "4795d0ce9f26f06aac2d9fa3858fc54a60eca6e3eb55ad12f743a6de38305afc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
