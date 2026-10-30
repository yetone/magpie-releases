class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2218/magpie-cli-darwin-arm64"
      sha256 "5fcb92d4132cfc62665feaffd110a62b143d1c1336477a5cb10fe406ebe83169"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2218/magpie-cli-darwin-amd64"
      sha256 "5628eb2651166156cf3f9b8cbcac11d62f747289be1bb8eff1ec66a919899476"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2218/magpie-cli-linux-arm64"
      sha256 "8db1c94816481712a60b9d602349c125683b61659d44a83d38c9bd90be34c354"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2218/magpie-cli-linux-amd64"
      sha256 "e1996bbfd05680eec76382df6c57fac7c81e4164f31d12ba513c1cf47029d084"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
