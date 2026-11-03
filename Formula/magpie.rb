class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2868/magpie-cli-darwin-arm64"
      sha256 "937e95b6a156bf179df3104c71da85eea09f4bdc8a547c52df63464145e636ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2868/magpie-cli-darwin-amd64"
      sha256 "09c7c29dde027311eca1b916b9dffb626a9189e136e892d57a37581cf017fc70"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2868/magpie-cli-linux-arm64"
      sha256 "53adde731fc4c378bcbdd9e4224dc99a52646fd428d259baadadb9392fe1c105"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2868/magpie-cli-linux-amd64"
      sha256 "afbb3744d83d8a5455da5cf729f23028a72f95a761df65e86a94bade17747482"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
