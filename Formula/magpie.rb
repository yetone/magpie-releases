class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4868/magpie-cli-darwin-arm64"
      sha256 "7263e89392909fced4536d7e5f07c7119fbe74cc4f296298abd5ca3bee5e912d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4868/magpie-cli-darwin-amd64"
      sha256 "dbe7a286f4a20bf21dde15dce60942e03e9a14517453c296835cf2edbf6fcd38"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4868/magpie-cli-linux-arm64"
      sha256 "6fac939d236700c7f84053a9fbb06782841621d194420df90da34c2a829af5a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4868/magpie-cli-linux-amd64"
      sha256 "16f6108b6ef525e5bfe1d28d4ebf3c432824cc332580776776edef24f7d3bc5e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
