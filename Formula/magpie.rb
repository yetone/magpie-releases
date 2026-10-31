class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2378/magpie-cli-darwin-arm64"
      sha256 "3949e73531060185bdaf87016e28f523b53dd5b08ad291da15de9edab29de2dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2378/magpie-cli-darwin-amd64"
      sha256 "76a95922a80e1fe6831d324d3a5eb18756530fbe350780987829d06c5a96e025"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2378/magpie-cli-linux-arm64"
      sha256 "daff1e718cd68ad769dc6fdac2546f302714a6797fc1a0e411c84066fb44656b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2378/magpie-cli-linux-amd64"
      sha256 "10a48652046b4d0ebe2fa0b93fc80e048637c3e9c4a5b636984857bed3ff993a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
