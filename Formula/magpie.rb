class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3997/magpie-cli-darwin-arm64"
      sha256 "fde40657f2f50c237f49b4d14738b228bf5cedeeea8a14eda2a99b17aa4116f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3997/magpie-cli-darwin-amd64"
      sha256 "d28f9c945b727a3bf14019ac5ae2d8235728a745a2319065527dd7d2270b6041"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3997/magpie-cli-linux-arm64"
      sha256 "ef996d7a7b64c974960316f05c42f3172b2a181ff617912569b27537d2555042"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3997/magpie-cli-linux-amd64"
      sha256 "1a451171720d9bdd47b74ad2009540d33102ee3bcdca0367ffe34daef596f84b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
