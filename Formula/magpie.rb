class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1025/magpie-cli-darwin-arm64"
      sha256 "e4b681fe68499901cb1e3646026add5ca33b1120434f65864945d7dfe5d20fb7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1025/magpie-cli-darwin-amd64"
      sha256 "173d80a88a3bbda0fc23197710b1b8c13cacbd792fe59b4cad0c4010f22c5525"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1025/magpie-cli-linux-arm64"
      sha256 "51a89bd1db5295a2f05ccda4a7de576205846ae009deee2451878c65a88cd93a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1025/magpie-cli-linux-amd64"
      sha256 "2f0a24d7c37d87c495ecf534176cb89681c2353c17ba1b6821159274d3402d52"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
