class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2368/magpie-cli-darwin-arm64"
      sha256 "f1c911e59762ce8caed8fc8f89deccf35636aa05aaaf823f0ea7ba147b4d2158"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2368/magpie-cli-darwin-amd64"
      sha256 "d21fa6056bb14fa0a4c1e0c1a9591e0f50b9ad5ebb1f7881aacce4f992077678"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2368/magpie-cli-linux-arm64"
      sha256 "78e7360282352d3c81fbf98325b9ac6fdaa90b30effff1289fd94b0448c7949a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2368/magpie-cli-linux-amd64"
      sha256 "7b5ff48decc71b635e53b2e4b81b8b70535b41aa9a29665c6934f5805855a353"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
