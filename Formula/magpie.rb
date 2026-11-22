class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4669/magpie-cli-darwin-arm64"
      sha256 "59408441762912147907b593b768fcc4968f5edeca5ca84c18dc9727a01212da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4669/magpie-cli-darwin-amd64"
      sha256 "bdbe2e30ab5d07d64553111143ce2c61ae77b10466d63711297d67eb7f63ad04"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4669/magpie-cli-linux-arm64"
      sha256 "82892933e78a726b5cab3294e411fa38de62325ecb031cc22600a83ae617c65b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4669/magpie-cli-linux-amd64"
      sha256 "f76db5c3f2097678716b561d4b5bd8f299078c427a0133465f4d8787828b823c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
