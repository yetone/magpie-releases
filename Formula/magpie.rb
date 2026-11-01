class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2584/magpie-cli-darwin-arm64"
      sha256 "7ca40865ccb864354b0d6d0a20ac8910c9debb55eee791714d5a3423064b5411"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2584/magpie-cli-darwin-amd64"
      sha256 "6bf09e4ef7b514aeab731f0a04577c1c13dd898c80453f99af86b5ca58f30567"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2584/magpie-cli-linux-arm64"
      sha256 "1352e6f1d93f9b4da654469c826501143254311c246f32bffc8343ef1638d94a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2584/magpie-cli-linux-amd64"
      sha256 "c83639168bc787303c9066b1f8b1fbf21c1cbee2fb47a07841745cd03beebe42"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
