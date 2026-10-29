class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1990/magpie-cli-darwin-arm64"
      sha256 "1b71a2fe767bed48e7af838f4ae835972c0b02b561c5c1b970636366f049a8d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1990/magpie-cli-darwin-amd64"
      sha256 "64e08412cfa452a34c2d24ca746634903a05e925640994f9ccd2198e7503e8d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1990/magpie-cli-linux-arm64"
      sha256 "befe0bf6071210d47028dee6591352045b65d516f04bb062f9dc3ca63809b48b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1990/magpie-cli-linux-amd64"
      sha256 "73a5c4e4599dfb59bbee57c44bde364a92485869feb12ed0e7933c8dcce19064"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
