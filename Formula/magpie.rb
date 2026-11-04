class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2905/magpie-cli-darwin-arm64"
      sha256 "83f0ecfe420f63aee02955d9e88c89b932898535686b84ff53f4bc196c0dc7f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2905/magpie-cli-darwin-amd64"
      sha256 "1df02e1416fa1d8a1e5cf465fb5934fef138d9e69f55ed4ac53b8e198f867252"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2905/magpie-cli-linux-arm64"
      sha256 "741d4c0ca6abc8803dea368518516ab34e3bd905721083952afa42c216d33e87"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2905/magpie-cli-linux-amd64"
      sha256 "079a4d1f2898378a565d4ebcbd96c4fafba04cd0221d083ae33dd59f9c586e37"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
