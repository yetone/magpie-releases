class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2482/magpie-cli-darwin-arm64"
      sha256 "d60e108974646de0e8c42a4277828c47a9ec8bd3717c0a7597215030804e6b10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2482/magpie-cli-darwin-amd64"
      sha256 "616882f48667ab6ed40bad6eeffc84e01dae42ea580f7a502ad13f8334e5ddf4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2482/magpie-cli-linux-arm64"
      sha256 "04fef105079be430b3226cda2364c334c84d0e699344d2b08ed83dca213e3801"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2482/magpie-cli-linux-amd64"
      sha256 "93d4527e4de275e3d8ffcd905765e49e9cb0caf077bd2b3e35223e291852498d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
