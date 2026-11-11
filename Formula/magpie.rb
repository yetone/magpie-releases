class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3746/magpie-cli-darwin-arm64"
      sha256 "0bad670774ca837e3dd9d3d77ed78dba7617fd54b703e185512b28d95a3cdd88"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3746/magpie-cli-darwin-amd64"
      sha256 "348c628ae53b6b960432e97f8f96a5015ff72b599f9f02e2d30199ec818d19af"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3746/magpie-cli-linux-arm64"
      sha256 "7d7110745293ca0dcbea30aa641ee33168f17309e87111478b034a6716743044"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3746/magpie-cli-linux-amd64"
      sha256 "fadd64cce5e3165bb872c949712d04cc28ff1b69664e91d987c92e3917480364"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
