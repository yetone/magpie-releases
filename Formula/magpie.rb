class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2122/magpie-cli-darwin-arm64"
      sha256 "bcf8e6533d6569a1a4572bbdc5e3fb9d8ae70c8a546dad46486d4763b5f14f68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2122/magpie-cli-darwin-amd64"
      sha256 "1fa7b6cfce8608d514e3c1d156c17a6ef1eb83066b621ba9f017c1a931bc3ed8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2122/magpie-cli-linux-arm64"
      sha256 "06715de77d66f0638c66b373f47606920f75e79d459bce5960f1185c4ab43053"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2122/magpie-cli-linux-amd64"
      sha256 "c8db212fb4ebbf32aa1aa7ac42ef0b897e9e8f53563070d79ef8736fd6cc3ec5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
