class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3313/magpie-cli-darwin-arm64"
      sha256 "6cf8ca01adf06383a54edfbf2bd50566c24edd41dac880a88be11f9d493d54e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3313/magpie-cli-darwin-amd64"
      sha256 "cb37b9f11b13291c1a7a17b5acf81edacd346c94af926689713df30b03ce3005"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3313/magpie-cli-linux-arm64"
      sha256 "0f746cf0734d59b833ed8505d814381178af05fab15854f4524ef32b826c68ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3313/magpie-cli-linux-amd64"
      sha256 "cc21aa781d7ccbaf6b631f4ea008a828bba49c5dc734320491cb33005006ee8a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
