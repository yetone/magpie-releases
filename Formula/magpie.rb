class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.984/magpie-cli-darwin-arm64"
      sha256 "30ed2783e1ad614e1ef979957e20b793027034a6745528a17f203caf24782e3f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.984/magpie-cli-darwin-amd64"
      sha256 "10da22149e5003c92e1867f68fad555f80b4d77c9080c1424627e52abbfa635e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.984/magpie-cli-linux-arm64"
      sha256 "4e16d94179dc48e358d01a6042c700b76ec50bf7633cc7842f1ffeed3b017b68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.984/magpie-cli-linux-amd64"
      sha256 "16aa8658de86f40ee59528393ed80721eeecc165daecd60150f5400abd480a4b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
