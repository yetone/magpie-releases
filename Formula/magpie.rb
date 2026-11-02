class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2759/magpie-cli-darwin-arm64"
      sha256 "667e296a98734fe918841f569895d5e69f1290df55f865a75a6a6d7223638d60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2759/magpie-cli-darwin-amd64"
      sha256 "c7c557aa65261d49c488e9dfd96d377f37e1c15f5c2c8a61422ff0716e0f669e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2759/magpie-cli-linux-arm64"
      sha256 "dc5037fbf8b28b3b99bcb359f3ef799a8cf3a18bb82deb903f844f364758f0ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2759/magpie-cli-linux-amd64"
      sha256 "55545b1314619f86ff50d68130472819490d057b88c25b47740c4e993cd91119"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
