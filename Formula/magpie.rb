class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4186/magpie-cli-darwin-arm64"
      sha256 "16239d74cbc3e8d717087e8c5a8e424f9187341647a4e247ff908add80485422"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4186/magpie-cli-darwin-amd64"
      sha256 "449acdc5f447bbc09486d8f65c48f565c5926ea58c967dfad08e1f96e2d98951"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4186/magpie-cli-linux-arm64"
      sha256 "100c1f2f03260fbda6ad35d608828426c5c00600d5a77e797a532b9e4a1d898e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4186/magpie-cli-linux-amd64"
      sha256 "81185457ab85e91e4bfa6787f0548f27658d96d51a0ff765f2e9f39e2efe910d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
