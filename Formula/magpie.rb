class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2177/magpie-cli-darwin-arm64"
      sha256 "ebf5ebb4dc6331282bf2852b90cc3b1361cd0d3eb4404fb9fc7145462437e0f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2177/magpie-cli-darwin-amd64"
      sha256 "4c3c32493e5064175ed5c714a7642d2b44deed3ab6f08c7bc0efce8fbab40b7c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2177/magpie-cli-linux-arm64"
      sha256 "e2d3abb801ae8ee7a80bc633b0b9e660bdc2ae51dc682f18b0ac62639365c7d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2177/magpie-cli-linux-amd64"
      sha256 "d38e3c914200a7438770b1d2105a597e8d22714e39431d206cff795f72b64cd0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
