class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4378/magpie-cli-darwin-arm64"
      sha256 "18f875a89f0643dc52a797ace46f3e5c1cf1dab7bc87eee0f073245499673c7c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4378/magpie-cli-darwin-amd64"
      sha256 "62beb21e62f7218bd5378003c96d4c38f3fabe01a92aeaab9c241cd56e679055"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4378/magpie-cli-linux-arm64"
      sha256 "bc0305eadf3b329dd56d369d534b95633000516c3ac4a2de59438465a3385948"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4378/magpie-cli-linux-amd64"
      sha256 "bffadda160355acd7c90863164e45ab87f9e59733641397d17f7b6bfd192debf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
