class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2495/magpie-cli-darwin-arm64"
      sha256 "9ad74c19751c62e284f3039b0d0d24797864e6abc48d0cb143a463c8196c65a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2495/magpie-cli-darwin-amd64"
      sha256 "cdd9be12e7e08fddad2d9056787f70cc838d326358f52e9930b096c3fe172e83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2495/magpie-cli-linux-arm64"
      sha256 "226c2a41dc0c8ca75d05e7933396d26dcece415014cb37cddd45e9c83aac5704"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2495/magpie-cli-linux-amd64"
      sha256 "b5684e9eedaf713a24cc5d6800ab08f7c0aa6ec79fb586a2862adcb03074208d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
