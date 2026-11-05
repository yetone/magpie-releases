class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3014/magpie-cli-darwin-arm64"
      sha256 "9cdae5d7db3420434c3b75171fee3559cbf4e6c8f647877d0ef8447a60b961fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3014/magpie-cli-darwin-amd64"
      sha256 "4c23027eca7d92bd892f7b2ce22ed2309936292e20da36c467de32e749ff4539"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3014/magpie-cli-linux-arm64"
      sha256 "cf269a5f3319a82fe82e5c7cfcfa3187dd4123be142b1ffdd1f4d345156ac9d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3014/magpie-cli-linux-amd64"
      sha256 "7ff30ef5ff141b7be5376eb8ea0a1fd232d80c687254bf0c429b873c44fb6d5f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
