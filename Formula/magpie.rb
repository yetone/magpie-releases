class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2266/magpie-cli-darwin-arm64"
      sha256 "837f16188ae3ebe0df3dad9da72002a6791dac85cb5f76be4d3e26036cbae05c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2266/magpie-cli-darwin-amd64"
      sha256 "e3ce40676927c3e71188249fa272ecd58c82e9a8432cbd0618d4a3f6e4359652"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2266/magpie-cli-linux-arm64"
      sha256 "4615b96e8fcac8337e4574222d45ad3cbdd01aed66a46adf16a5133c3ccd847f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2266/magpie-cli-linux-amd64"
      sha256 "fbb2a7755c308eba74733e9608bd67d68535f528d0bb897a140f81843b98184c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
