class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4297/magpie-cli-darwin-arm64"
      sha256 "a2c367c005070054bc3fc78158ce2b90109d9b3cae1a0fdf0c48b1a5ac8cf114"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4297/magpie-cli-darwin-amd64"
      sha256 "645bc29d4db5c7293e451430bc2a87712026332221dc9aa17e60d8b511f8424c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4297/magpie-cli-linux-arm64"
      sha256 "cbd7b5c7a315ee4d01cf27d5398ca46a7bed2e898efd48f09c065e4846308f9a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4297/magpie-cli-linux-amd64"
      sha256 "baafcc33c3baa80102abcff48c6f7216c92825c8915a5287e3aef587e3fa2946"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
