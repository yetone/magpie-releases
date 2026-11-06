class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3175/magpie-cli-darwin-arm64"
      sha256 "152e4cedabf0fc43ab30c1c3051a0004e1f50b7c176312eefaff5ef560efd8f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3175/magpie-cli-darwin-amd64"
      sha256 "145d1269d42429bc8be13e3a725ab7123f308637866cfe2cc44f838537808ac2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3175/magpie-cli-linux-arm64"
      sha256 "bbbc9230fb0d5a9b993d01af4d413a9a7f632f8a0cd72e77ab8abc4312bca85d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3175/magpie-cli-linux-amd64"
      sha256 "88b9bae5ff6d7adb8561f4334dc628355dc1a48eac87e5afab4837c784ebc80a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
