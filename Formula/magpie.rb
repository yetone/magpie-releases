class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2674/magpie-cli-darwin-arm64"
      sha256 "0901d6d8293da3f2bac9505b1c206431d06d394a3f0b146b793817f623853ac4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2674/magpie-cli-darwin-amd64"
      sha256 "430536ea395790b00c42ff58c8d187b25cbf1ea03d45a0b8cc1d6164fd72d879"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2674/magpie-cli-linux-arm64"
      sha256 "9b474cae16286d74958382de8a0adc1f620b884b129ec9783faeb48ffd6c5d36"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2674/magpie-cli-linux-amd64"
      sha256 "fb54738e69f4438a6cdd820d317ee1f79af5f55917699d8925d37fe5361db713"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
