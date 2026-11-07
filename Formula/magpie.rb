class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3218/magpie-cli-darwin-arm64"
      sha256 "df0b5dbc44ec276369fba8d40696f856ca06df8e7fa10bcbfac4414bd446342f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3218/magpie-cli-darwin-amd64"
      sha256 "b3663c7cd881dcc505a71f26d2970ad3ff4d9ba37951a5d17d2fa67257396b87"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3218/magpie-cli-linux-arm64"
      sha256 "014788714087ee102e2ef691d68f5a3112bd6c487d7121591366300af0fd7013"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3218/magpie-cli-linux-amd64"
      sha256 "06bc2d0b96b28894e14e02edee9c21431f6923ec72d5022cbc051930232d0434"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
