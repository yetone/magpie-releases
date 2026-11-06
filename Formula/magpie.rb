class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3098/magpie-cli-darwin-arm64"
      sha256 "15de3f0cee9f790229c373e0d2337da91f4be46ff61032efd0e8d54092ef7fed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3098/magpie-cli-darwin-amd64"
      sha256 "894662448b54793d01f152bd8bfd4465c83db8a107b4849562998cb947090631"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3098/magpie-cli-linux-arm64"
      sha256 "db16dd417021b7b5ae2e250d53e42bef5a1b1654f75234db5812522e84566c05"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3098/magpie-cli-linux-amd64"
      sha256 "1c153c4b4db51b06d81b6e01b2dcf7454131ddcd217b95622be741513b39db0b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
