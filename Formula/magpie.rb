class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.910/magpie-cli-darwin-arm64"
      sha256 "de1ef732527bb99f12da6db5868e4d8594d266ed3a452b181f7d6063922f589d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.910/magpie-cli-darwin-amd64"
      sha256 "e596decf78e539d964e6f41540d0d6d9fed0b4807d215daead783af2d9204abb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.910/magpie-cli-linux-arm64"
      sha256 "d701fea60f75f4026619a9f6e6050444315826ba49753ef4dc4841aae1d3cfb2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.910/magpie-cli-linux-amd64"
      sha256 "ae26142082373f1fc671e24606d12df8842dd8e2e6f4c44e2355fa46f4eb9825"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
