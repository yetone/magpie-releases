class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2670/magpie-cli-darwin-arm64"
      sha256 "466a94258556a42e0895d9f23709619bb5299c64474dc472b0ec46cf5515aa4f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2670/magpie-cli-darwin-amd64"
      sha256 "dfe9639100203fb10beef3da5b64355b3b7a0bff983d16f6ef0048f4e5ba5b71"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2670/magpie-cli-linux-arm64"
      sha256 "abc403900edc8d620cb84946b2e6acd32f9f2cd06b10e2e16b9f2397c44f166f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2670/magpie-cli-linux-amd64"
      sha256 "293c54107bd5a6585ed131737eb523b32fbcb6f358c586a507d235fa04631d17"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
