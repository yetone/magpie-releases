class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2869/magpie-cli-darwin-arm64"
      sha256 "0d584dfe9abb1987eb015063e187ede2007b938d91be48c0e5643d629e8a16fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2869/magpie-cli-darwin-amd64"
      sha256 "cc48240b3071c8bb0e183bdbd2e89d914b3b62da65717c85201af5c829ab5059"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2869/magpie-cli-linux-arm64"
      sha256 "c897aa1c83b0ef8d7ee1d9ba55d449f6a244568d7b6941631ab5573b4c5efc6f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2869/magpie-cli-linux-amd64"
      sha256 "d485ce87428be7df4b3bbe90b4f029c9408b580b22a023db574f50237b11295e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
