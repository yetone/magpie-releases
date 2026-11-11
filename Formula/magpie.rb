class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3807/magpie-cli-darwin-arm64"
      sha256 "09703d2a6ea381d8aff3d58f5a664c262e878060c50ef5348458c6299c42a42f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3807/magpie-cli-darwin-amd64"
      sha256 "54807fe9eab0852b2e11704b340eaa11bd19ac5abd66296d7f64952a7af58be3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3807/magpie-cli-linux-arm64"
      sha256 "35bb97ad4c18613a2e731ef95bf033b94d3f48bb33d8bc7683d6350030838bb8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3807/magpie-cli-linux-amd64"
      sha256 "aa5780e0a2d6dee3d862b575e1a7bdbf257fcd8b9163f951618942bd4a86a358"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
