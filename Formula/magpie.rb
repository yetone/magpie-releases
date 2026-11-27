class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4957/magpie-cli-darwin-arm64"
      sha256 "3a2bbeac4dea7540ecc1d881a9f9c5cc3eb8455f73307ad0fb64882c97fb9eb0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4957/magpie-cli-darwin-amd64"
      sha256 "2e30d169c430219cd15320ddbef5f5772a15c742daffe0f016de8066050cfcd4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4957/magpie-cli-linux-arm64"
      sha256 "d4639f79bd55ac21b9ea8760793b7aaa9c209d240af4881bc3fe82da97cc61e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4957/magpie-cli-linux-amd64"
      sha256 "5ee0e3b58fe2a10b6fbdf55cb17eb08a6bf2dcc1606abadde0abb48e659a9482"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
