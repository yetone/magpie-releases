class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4686/magpie-cli-darwin-arm64"
      sha256 "c846e86e1e48a16a447af8ff2d327fe7fbbe15f811abf98e90ebe6df04ecb184"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4686/magpie-cli-darwin-amd64"
      sha256 "2362525c0dea4f5158d31543675baddc5da32479ebcc71cac9f78e0db347e1a8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4686/magpie-cli-linux-arm64"
      sha256 "12d47c14fd3da0aae94482fc919b1cfa46b621879456a54f3ecb5d69eb1e0726"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4686/magpie-cli-linux-amd64"
      sha256 "927422d5db3f968e7af8bed1be530a8432d1a06da96d4c3e71706a37c7f8c6dd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
