class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3770/magpie-cli-darwin-arm64"
      sha256 "8719ed2afabbc988655af165eff53aa2b6a6f67992e486f4cf54232b3461e005"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3770/magpie-cli-darwin-amd64"
      sha256 "27775a6262aa60ff22ef8c399f6990a96de203699c6182c1445bc9274251f403"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3770/magpie-cli-linux-arm64"
      sha256 "0b1fb72fbbe4204c8af62cd186895014eee8c8776e7111035e9874a8bd7937b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3770/magpie-cli-linux-amd64"
      sha256 "f9696335e1f978213e3ac1ecd082e08d52df74eca7b83b60d519983dd87534d6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
