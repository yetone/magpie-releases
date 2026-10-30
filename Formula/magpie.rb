class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2284/magpie-cli-darwin-arm64"
      sha256 "6b3e83064be6f769bb06815369e8aefbf1c1f9282e1fc88d4bfaf3b86b9e9da5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2284/magpie-cli-darwin-amd64"
      sha256 "59da127d3d09078f4678e5c6e9f6f2b97134608d51c7d72b7b8d3300e30133f9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2284/magpie-cli-linux-arm64"
      sha256 "3f711ada2fcc6888c3226914978e8f19ed6420ca2396cd24edeb931fce59c0fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2284/magpie-cli-linux-amd64"
      sha256 "dfe6cb1daf5f58845cd4eaf309270c6260b0ddb32b906fc94d97501799f8732b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
