class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1104/magpie-cli-darwin-arm64"
      sha256 "007da12e4a1cc621c6fbebaf80beb0ee31c250372d8d62af8a4ed8359011b3a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1104/magpie-cli-darwin-amd64"
      sha256 "ddbdba4155599fe8b2311fd6aec588995bbdbe7273f702e59656e3e5c46a916a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1104/magpie-cli-linux-arm64"
      sha256 "9ba5c0171370bce78991eb27aa85973617218c68553197a96cd7147c5056d8e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1104/magpie-cli-linux-amd64"
      sha256 "5635cc7efa38bfc6bfa544f0f1657c066823b0b2a9de07f6cc3e1cd0bdb7bdf2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
