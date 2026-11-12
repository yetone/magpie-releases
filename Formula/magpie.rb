class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3925/magpie-cli-darwin-arm64"
      sha256 "7cb74ec9593d4d912f1884c5e32a4b44aa7581860b420a687dd0b12142c83d24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3925/magpie-cli-darwin-amd64"
      sha256 "7d0571d9a3d96d7246ed3e5be105c7fcbebfb64c55103e497e94cb18af68e64c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3925/magpie-cli-linux-arm64"
      sha256 "a75051d9b64e79d736df51876a2bc9cb94f77758daa18d136b4aa78496d34050"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3925/magpie-cli-linux-amd64"
      sha256 "baf8cd936e73a26559caae7a3ae9e43ac1cdc0fe5cf7af645f36a61c669590c8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
