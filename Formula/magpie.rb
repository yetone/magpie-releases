class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1041/magpie-cli-darwin-arm64"
      sha256 "07f4483b2c0304c1c79faa7f7796ff37974a76e448c7c5c40343e6c7c3267fdc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1041/magpie-cli-darwin-amd64"
      sha256 "b6855a86127103b186c19a216fb573696cbfb32f91f33b085c863f8fa450a31c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1041/magpie-cli-linux-arm64"
      sha256 "1c8391d5b5ac1ea8d1f87163053522736cc93fe26ffc22c24dbbb6d82ca24e3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1041/magpie-cli-linux-amd64"
      sha256 "00eed8b8a4d9ff71b2617e3e4a93ddf023c7fe9d7797eefedc6f7f2dabeefc33"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
