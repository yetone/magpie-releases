class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3007/magpie-cli-darwin-arm64"
      sha256 "6bb4b97016960988653ae06a6a08e66dc71ad1698aa401db3b04a40700a4664a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3007/magpie-cli-darwin-amd64"
      sha256 "cfcd8bd49f97efc6a5766d63967e568c547c49fc865cf6417f53fddbf682e4a3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3007/magpie-cli-linux-arm64"
      sha256 "7a4f8d11b6b49230644ff832eac96b24171100116050bab8c682b6575112ba9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3007/magpie-cli-linux-amd64"
      sha256 "ed5c6ca03dcdf69c7b3c3b2a09576612b27fdefd8e99563c8ff5e32b44b08abd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
