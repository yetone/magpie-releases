class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4310/magpie-cli-darwin-arm64"
      sha256 "9dedbbd8f3e3e9355be9fc71ff9eada24b50bc262da8c89f2715105f3dba504d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4310/magpie-cli-darwin-amd64"
      sha256 "a847f38f0a1b049a6e5375ea7456edd35d689e7a929f6a032bd4016f47b487a3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4310/magpie-cli-linux-arm64"
      sha256 "ef069f45928d22a9baf8035841dc6cca4259f5ccab83ce29107b0d7ee3b55e1d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4310/magpie-cli-linux-amd64"
      sha256 "a75fcd54ae1ea0cfe3d40e2113c3c5a3a0c9b89450cf7a39070766cf168f1b71"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
