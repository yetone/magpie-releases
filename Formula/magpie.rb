class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3710/magpie-cli-darwin-arm64"
      sha256 "28c8c162a64d118d7fc3562069b3161ed9d7274c26c051f0991d7b729a2a4d4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3710/magpie-cli-darwin-amd64"
      sha256 "e73db58864280b48035e6536a6b7ab749a90283f44a07f0099eedcae42656b14"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3710/magpie-cli-linux-arm64"
      sha256 "daf3335ff5740e96d06f35c31b9f3157009c1ce3acfe89bd592aa8f7865fcd3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3710/magpie-cli-linux-amd64"
      sha256 "cc8a7cd1544b3c3db0ae0472f4f638e6d3b0c9fec59bc479cb6b3f2030c72f47"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
