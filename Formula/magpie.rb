class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4665/magpie-cli-darwin-arm64"
      sha256 "39cfba5efe70714b5c28de757782976126216c1a6994bfd2f6a2d76516fa22cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4665/magpie-cli-darwin-amd64"
      sha256 "7a29d2dfcdfdf14704b2a2d545fb9d9f91e0a6678318d4b619337f4cc82fe5c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4665/magpie-cli-linux-arm64"
      sha256 "29344cb11280b9e1a113e9d9736ee626994ec8d6cf575803f8deae3a44e62fdf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4665/magpie-cli-linux-amd64"
      sha256 "8afc3516d00cfe264a9be6f15130ecff2f4a468adc6f980cc09cbd58b8b8ff54"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
