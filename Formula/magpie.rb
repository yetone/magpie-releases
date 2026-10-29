class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2065/magpie-cli-darwin-arm64"
      sha256 "4eddf9e2d51ca60e43ba31b495c22d74d22cac61724f4417ed27f3f1e1bffe7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2065/magpie-cli-darwin-amd64"
      sha256 "c1ebd55c58ecc2ec3015f1432a08dba239015d61c9de8d7dd6aeda06838bac25"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2065/magpie-cli-linux-arm64"
      sha256 "eb3eb5622c299519f3f2bf1b4ce1a0f2a31e39d3c61c158693b558f4bea07289"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2065/magpie-cli-linux-amd64"
      sha256 "e4b865b9b9f1b1043b259a0d0af4ad4b7b68b737ee53ed81780e64b67e322b11"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
