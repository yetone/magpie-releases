class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4290/magpie-cli-darwin-arm64"
      sha256 "49a98195133c044856b7ecbe732869b3431ae8e4a87e79a70036485fb3b33f2e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4290/magpie-cli-darwin-amd64"
      sha256 "3873b0374ed6b56422912217fa1dac264906f5a7719f53d12da58e567a5f6c72"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4290/magpie-cli-linux-arm64"
      sha256 "f47ea9c47e73252c8325b9a8c90b74d9dd5266e83e8231429cd5621a8bdef447"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4290/magpie-cli-linux-amd64"
      sha256 "4bf67cdbb72f9bb280547c17a2361839837e96ba253c046f4fa5009c2b3b1bc5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
