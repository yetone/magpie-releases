class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3821/magpie-cli-darwin-arm64"
      sha256 "29658dd24c5cf9f1fea5a9462c11429404993903474224590a969d49928d83e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3821/magpie-cli-darwin-amd64"
      sha256 "5a75a2fd65b7bcdfe5d9b9e59623ec025e0a83644c0fe2e99e98bad0a968af67"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3821/magpie-cli-linux-arm64"
      sha256 "709ad92d7fff2a5f624d6b86fd8bae6eb6cfc453362f3fd7e8f5f10e851128b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3821/magpie-cli-linux-amd64"
      sha256 "673ea416ef3ec6063d8966ac64ad4c2b53500d04632529185e7055e70b5024a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
