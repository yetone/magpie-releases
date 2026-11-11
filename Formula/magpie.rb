class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3681/magpie-cli-darwin-arm64"
      sha256 "44f23f402ba6898e29da0a0f2370de93a39c87f864dc24bbc6be6eb84250c3ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3681/magpie-cli-darwin-amd64"
      sha256 "666a8176cc59eb552ae791d89ed59550b12bcce9be07a97767cb932306d786a0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3681/magpie-cli-linux-arm64"
      sha256 "617b42e6ec61c130d85ff061e4e1ce24e53070408a0e5960291ed89238eb4ff8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3681/magpie-cli-linux-amd64"
      sha256 "30a8f1c583623f16e8112327745d1d78af6f58c3f1d7dbc01fd42e038a5fdddf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
