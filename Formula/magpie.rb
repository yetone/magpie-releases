class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4434/magpie-cli-darwin-arm64"
      sha256 "30d258ed8d075b39db37825be60d99e782742ef0e7f44d76725778d7d973812a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4434/magpie-cli-darwin-amd64"
      sha256 "d560c6790c518e5a62d9851a483cac40b8d56167ce16f991c81a8df5d9eccfe2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4434/magpie-cli-linux-arm64"
      sha256 "b1feda5809b495aadaebe29695bff30f5e63e44046f96fac2a217c2d159bcc6c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4434/magpie-cli-linux-amd64"
      sha256 "786b27c9359d627658716ea1cd17da9d8449a013b78fe7a77bb2c44870100c8f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
