class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4534/magpie-cli-darwin-arm64"
      sha256 "a73e108a0da0db1752bda16fc5fa1af59b3d6979898120c98def8624cfabc6b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4534/magpie-cli-darwin-amd64"
      sha256 "b684c54157fd72b60174361186b37cb5681c4f9e62a79d8194b40b63447acced"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4534/magpie-cli-linux-arm64"
      sha256 "57fa63db8ff9efc1ee2072c810de04841eb950892f5753b75acc5db7a837d1cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4534/magpie-cli-linux-amd64"
      sha256 "dfeb320fc11dbafa414b8b102dff57252355d901ddb7f216506c7f4bbcae0a32"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
