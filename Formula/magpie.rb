class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4454/magpie-cli-darwin-arm64"
      sha256 "f3b285ae26edd5a51b803b88ea56e0c3444cfc9d7bfd7fbff1862984824eef19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4454/magpie-cli-darwin-amd64"
      sha256 "e697eba13d6160a8e2d38a182bd07bb565d6426e174188639c9aed192f36019c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4454/magpie-cli-linux-arm64"
      sha256 "68c292460e8f881f0a5c193d46b2c1a2935b698568b146278e58729b3cf5f700"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4454/magpie-cli-linux-amd64"
      sha256 "bd0072ceba267eb329d00f5c66d67854b9872f5d52ad691c3c669c9a83b4b4ad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
