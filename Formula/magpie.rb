class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2403/magpie-cli-darwin-arm64"
      sha256 "e510fe5e5f639375e439f2c89800818037c2190fea4c4455ce017017cd8d03d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2403/magpie-cli-darwin-amd64"
      sha256 "bf8dfac996d624dfb9e292cb33d8d5307461d60cd0f938eca6526ecd7004b9a8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2403/magpie-cli-linux-arm64"
      sha256 "36e895420c2f7e81f463e114bbf5477ed7009a21bb5da656d0f9277eab3b14f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2403/magpie-cli-linux-amd64"
      sha256 "83d232e28da88a8f3e11037d232478801dafb55fb976253ab5114284db27622b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
