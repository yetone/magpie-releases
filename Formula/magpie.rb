class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2193/magpie-cli-darwin-arm64"
      sha256 "7a1da7c3ed2691beb1d04abb89f511913093b8d406deaaf454758e1d878715c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2193/magpie-cli-darwin-amd64"
      sha256 "79be53b348330680bec3dcb86791c488f88fec20047ab2a02167a54e94494c8c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2193/magpie-cli-linux-arm64"
      sha256 "2431b613eaa7dd6f9977f98b809643e9d5f5353736982a067d978c1c0e28e09a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2193/magpie-cli-linux-amd64"
      sha256 "b0c4db842f9a06e50c353c52d25fbabc77fe1cf8679ae4b074818a464c37e7b2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
