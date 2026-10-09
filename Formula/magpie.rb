class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1145/magpie-cli-darwin-arm64"
      sha256 "8c1c59e387ce35457fc1a6d768312683d8a628ac293e1b2d0979abed353d17c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1145/magpie-cli-darwin-amd64"
      sha256 "98ebec3a70414d2700734b7ff8cd2a1ac0a1f4aa4b3a9d9d221306123fa89816"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1145/magpie-cli-linux-arm64"
      sha256 "1fd224e92f360ee1d7ddea1cc16119c07a817e24f15ca6f8631004d0e568e270"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1145/magpie-cli-linux-amd64"
      sha256 "dfa40f9fd444395c60aad0a76ab41c6f2ef47ea170cc02b991c43575864cb50e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
