class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4465/magpie-cli-darwin-arm64"
      sha256 "6ae9ce1aee334647fa5b71e9560e04b2b332238a8a0d63ea28a608079d37d72d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4465/magpie-cli-darwin-amd64"
      sha256 "4fdcf304436589e97bdffb82f9366cfc40c8315222b7ee6940a5b5382ebfb113"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4465/magpie-cli-linux-arm64"
      sha256 "509265703010ea365280be40a98561310903dd8792313914c32ff38a6d0eb6aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4465/magpie-cli-linux-amd64"
      sha256 "25c3c631730c1fc338b723ed70ca3bafbc07928fc211ba5206effad8bfc06004"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
