class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4258/magpie-cli-darwin-arm64"
      sha256 "cbaa190e29e351ea86ef7a770bb0332a6c293ec15e1617197df0de83a0f003ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4258/magpie-cli-darwin-amd64"
      sha256 "9f53371d93c4c05bd0c099051ef3eacc7791a3ce0bb458a443d9b07d446648d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4258/magpie-cli-linux-arm64"
      sha256 "e6f26b7a4cf22fbaf28ba4fe2b590079325971d11e1aaeabcad116fc3f3c7259"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4258/magpie-cli-linux-amd64"
      sha256 "b7dce0b80b775f22c25c8ba01a88986fc62f2159ce21b4ff3904eca29c0e144a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
