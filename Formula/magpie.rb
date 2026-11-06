class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3138/magpie-cli-darwin-arm64"
      sha256 "265f6d0993afe52979da601391efa40fc966addf7901559096c9035bd35307f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3138/magpie-cli-darwin-amd64"
      sha256 "62e657f91b172d56038f4482c315eda8b4d39422a6768477a89b833f7fd1b1be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3138/magpie-cli-linux-arm64"
      sha256 "4171a0611209560b31efa16618a94dd06b383ea76519f4dfbdbbe11736ac9d14"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3138/magpie-cli-linux-amd64"
      sha256 "4f9f9909883f2ff5c59ec084c9e4a9f08ac7b863e2c426b90039dc74077b700c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
