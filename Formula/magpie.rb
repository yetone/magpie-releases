class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2702/magpie-cli-darwin-arm64"
      sha256 "15ba8ffbdf57d72b97f1f7a6e69bc7b3f5c7ce7a99f28a6dce44311098373635"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2702/magpie-cli-darwin-amd64"
      sha256 "9d34e193cdc2502546e36d329fcdc39d39cbb679f17b57301ee6dabd2daa94c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2702/magpie-cli-linux-arm64"
      sha256 "2a28e57bf5d392240b7bbe13ef4c018180e4b3b99c02de1edde52f7f2e2548b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2702/magpie-cli-linux-amd64"
      sha256 "5fb9d434905814203732bd49e92a3e2ddaa0dad2db4ae17d0838ea3a9929fa57"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
