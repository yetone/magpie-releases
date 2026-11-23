class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4702/magpie-cli-darwin-arm64"
      sha256 "074032cf906300ce077fbbc6cc99fbe63a308f3f77b690045727c33c089ea631"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4702/magpie-cli-darwin-amd64"
      sha256 "4ec991f0e608d89878cd5e85e11f24b86cb876b7a99950759dd84f1083c79d32"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4702/magpie-cli-linux-arm64"
      sha256 "b2fbbe500f483012ebca9e3e1fbde2089df240cf068286b17bd1b3b4ca4ed6a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4702/magpie-cli-linux-amd64"
      sha256 "4414c43c3ede506badfdc3b1879a54deb7d8f3f954e5bf148b925558ed299f89"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
