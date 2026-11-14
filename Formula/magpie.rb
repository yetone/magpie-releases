class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4145/magpie-cli-darwin-arm64"
      sha256 "737e33a729c789a3439f9f495a7dc10e0f02f1d9a6524e4cbb73d75c2b79116e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4145/magpie-cli-darwin-amd64"
      sha256 "173b509f88e03b6885499b70f981846465c8357e02a941a9ab285e7565e2ea51"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4145/magpie-cli-linux-arm64"
      sha256 "1d6312f99f27ca4e5183576a81e47ae04eba3f7a532d38c3943d724bc48078ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4145/magpie-cli-linux-amd64"
      sha256 "8407ce8842d4a2cfe6e35fa70893e705cfa4c7ed69a55ed9895d840ae8fc2602"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
