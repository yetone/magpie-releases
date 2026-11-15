class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4235/magpie-cli-darwin-arm64"
      sha256 "87f002425b5e1bfc54b0ba0c1ef58ae035ed3f4b5607144bf2ad192c762c6498"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4235/magpie-cli-darwin-amd64"
      sha256 "9e7702a29f93a5382da2030d48e73491a2cb130513c8d71019081444f6f66985"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4235/magpie-cli-linux-arm64"
      sha256 "af8857b0608e050727a37d230e175703536dafc5393eb9730c22d56495c10279"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4235/magpie-cli-linux-amd64"
      sha256 "fbee9e5602515df9574d2ec72fb5d4ed0c4748d3b7544697dfc50d2dca4ae0d1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
