class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4623/magpie-cli-darwin-arm64"
      sha256 "9d8b82096672d61e04f1f515141fb189582971fb9feef311e3c6c25bc39a8dbe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4623/magpie-cli-darwin-amd64"
      sha256 "57d5f3d60161f3ddbee979ff5556cbf8ad14adbe2e3f3e7287e50a9bb91d730c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4623/magpie-cli-linux-arm64"
      sha256 "f9cb620eac54d448318ea9dd4aae9517d9e625db04ca36eda2d169a439e5396d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4623/magpie-cli-linux-amd64"
      sha256 "be10e5804e763a5041722a206274d00ff092a2c8ab993096a9ed6e59ea0bddc7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
