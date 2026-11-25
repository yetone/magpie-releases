class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4805/magpie-cli-darwin-arm64"
      sha256 "a397199fa6281f5adc60a566e64fff4fac4595653b9d2b3b44c8a6b86d1af5c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4805/magpie-cli-darwin-amd64"
      sha256 "2a1c49c220e8366b5e96eca44c6a108a4afd54854a56650b66f01833899de0cc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4805/magpie-cli-linux-arm64"
      sha256 "eb6497b93623e39ba68e9cb62b9b55a9b158df9a9bfd22074616be02e080a907"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4805/magpie-cli-linux-amd64"
      sha256 "81da5efff9120ce5b0a181ad11d55ac9d51cd1eefa3d428ac57940ef8abc03f9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
