class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4548/magpie-cli-darwin-arm64"
      sha256 "2076d03b7155c3bb224e22d3b7bbab2d3dc45fcdc2579c90ddc83f808179f2a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4548/magpie-cli-darwin-amd64"
      sha256 "77948291a04b2c647a89bfce2edbba15015974f6ee95a4e780cd06433fa6d34c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4548/magpie-cli-linux-arm64"
      sha256 "ac7d2d913c24ae061a5dd7d792b9fc473a4b905ddc1538a347c274bd06554f5a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4548/magpie-cli-linux-amd64"
      sha256 "2a36ad6fccde69755da08f8bc995e5a3e45c3aa3e821e6541271e308afcd9a8b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
