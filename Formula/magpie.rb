class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4136/magpie-cli-darwin-arm64"
      sha256 "d984f8f77cdbed1611ca126157ea93cd8a0115c1814147073b829bd1a33357de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4136/magpie-cli-darwin-amd64"
      sha256 "392f43c6a2cec2925f4b9b709bf72534726ba3ae9061a16eba14edccc813e08f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4136/magpie-cli-linux-arm64"
      sha256 "8da3f67c6aad8ef1b6176df21f9e9cf9566ed4bf0c30bc2d81eaeb33231a1349"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4136/magpie-cli-linux-amd64"
      sha256 "51a1457e2b6ef11ca8770a1cedd24baa78f72f0edd914dae2a52818521ed97f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
