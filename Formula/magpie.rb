class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3415/magpie-cli-darwin-arm64"
      sha256 "9467c8877950bebf7c3b568b7c1803ffcc70c43d528b492650050995fa783a4d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3415/magpie-cli-darwin-amd64"
      sha256 "629c9be19031a1032356917ed6d78e7fef235f77e64dec6bf04b4bfa28949061"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3415/magpie-cli-linux-arm64"
      sha256 "39ea0fbb91a117690401161b846b5b8a1a03f31f883d0b1dcbd769cb6cf2fb9c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3415/magpie-cli-linux-amd64"
      sha256 "9d3e0babacd727cbf0cedf3bc58464044b5f0fd285b6ba01a25255232275da29"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
