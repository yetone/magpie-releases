class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3196/magpie-cli-darwin-arm64"
      sha256 "99d780674a75f3e1ffd8510b875bec00303b20c9a102fc11ceab120038bcce6c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3196/magpie-cli-darwin-amd64"
      sha256 "baa2dea98e293bfe49c7597cb29ec10a7c65234a149a547753d87d315373bcae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3196/magpie-cli-linux-arm64"
      sha256 "1c0fd00e15fec6d403fc467b595274750baddf4e36e99922470ba37e4e14f942"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3196/magpie-cli-linux-amd64"
      sha256 "b82e24ceb937e9d1470e44754224c2ac68a8578612c31d3768dd50bbb90941f0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
