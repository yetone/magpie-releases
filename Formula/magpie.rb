class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2452/magpie-cli-darwin-arm64"
      sha256 "9aef73e6249c82cef3ef1fc8cc6c7894d4d6c7e790942d64f3a0d215f6260498"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2452/magpie-cli-darwin-amd64"
      sha256 "d60783a09581ca3a93c6eb00b6a79c6b06d629601f6f22a2f49062da587d4726"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2452/magpie-cli-linux-arm64"
      sha256 "8f16291e32ac588437e75ef10e863341309ec04c945faee8174c2e01190f18aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2452/magpie-cli-linux-amd64"
      sha256 "8fdf7be9401a470a68fc669e527309669861ebf84d70e7d89a95f4dd45a418a9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
