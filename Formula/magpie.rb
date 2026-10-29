class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1994/magpie-cli-darwin-arm64"
      sha256 "2cc4ac3720b6fe6f25fa915194b4b3ef0aea58d53e59bb099d0ac27faf4cf0cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1994/magpie-cli-darwin-amd64"
      sha256 "86ac6a0361bc4d9d945e1de76e17ac13fa282b33f9f30c16d4e5136fdc21ba50"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1994/magpie-cli-linux-arm64"
      sha256 "12b2fa1ef757ca3e0a03ca76c3c4d61973858f6a4ae4220fbf9b013cbf4d3521"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1994/magpie-cli-linux-amd64"
      sha256 "9c04ca0e4afcd590df0f2d84967a956a1db4aa2e13d1b3a06c964ed55306c264"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
