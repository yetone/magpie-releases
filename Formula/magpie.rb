class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3430/magpie-cli-darwin-arm64"
      sha256 "9ee628a02db043f4fb410c113933a2fd04ff2c026379d3fd651cb08674fd1a4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3430/magpie-cli-darwin-amd64"
      sha256 "671488cb3ba9f7f7536d9f97e6a462f1a127e2c62da157c10323e35f3910d74f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3430/magpie-cli-linux-arm64"
      sha256 "424ef65494cf837640e4d30e9ac3165d9b1d68f74f8d6b54fa8dd7dc9fbdc61d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3430/magpie-cli-linux-amd64"
      sha256 "c9c4a1bc319919d96a989e80d042d044e4ea91997c80beaf582a2f9ee7432ac5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
