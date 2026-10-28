class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1931/magpie-cli-darwin-arm64"
      sha256 "6298e1c20b1ab0e2f766b43581769ee7d521ea430f17272a0473fa113df31111"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1931/magpie-cli-darwin-amd64"
      sha256 "9253912717076b034b961099dbfe2bf06bb90cda5cfab92e10a7fa1a04e83563"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1931/magpie-cli-linux-arm64"
      sha256 "a3bc463b583fbe26b7765ecea613f76da34a3e00022ec0cb3820496b6d26ad5d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1931/magpie-cli-linux-amd64"
      sha256 "009a50a4145615a011a2855b2d91972d5fd0a53aac60f59f6c5028e52212c084"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
