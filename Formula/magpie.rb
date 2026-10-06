class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1089/magpie-cli-darwin-arm64"
      sha256 "dbce222b5355e13abe827b19f60ec1babf420bd58022b5cd251ceab4ccf89289"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1089/magpie-cli-darwin-amd64"
      sha256 "7a0dc134f6a83f6cdeba35e098fafd722e69784fc5da412f95d0d085c6eabac7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1089/magpie-cli-linux-arm64"
      sha256 "6f183a237b6377c34ee132e6ce28f5a03531a055c8ada351547ad0a05a7cbb0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1089/magpie-cli-linux-amd64"
      sha256 "f3d60ace8584bbd4a89b457c37bbeca5e24eab82b35e81d8b2b26dadd3ae0619"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
