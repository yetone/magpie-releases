class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2767/magpie-cli-darwin-arm64"
      sha256 "480dfae12b8a0fa47056d951fb3a85934afaa1415b5d6fa4fbee612a7cd2eb62"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2767/magpie-cli-darwin-amd64"
      sha256 "94cbdad8a183e17124594da174293abf06d80021ddca80e2d3f3162ea533f7ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2767/magpie-cli-linux-arm64"
      sha256 "830b49562d778befbdd06e05b903ff30c46a89f1b8156711b5d56d3cb616a4b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2767/magpie-cli-linux-amd64"
      sha256 "210c38e85b946b8e8955da46598a880c318f97250dc8eca0247eec7d4cc430e9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
