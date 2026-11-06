class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3080/magpie-cli-darwin-arm64"
      sha256 "5bbaf7b955c3ce7f893afd49b343d678271b69884e70ea58a6c7b7b5442e9bd1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3080/magpie-cli-darwin-amd64"
      sha256 "fd805b1044bfb84c7e095cf1a9d9f2a7c8af44cfe3c0bcfc0076c14f6dd0b3a8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3080/magpie-cli-linux-arm64"
      sha256 "108990936db75fe7bfff7de549d139c9928ac8e32b0fb7ffcb3ea8f08e3e9a80"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3080/magpie-cli-linux-amd64"
      sha256 "77d52f357720b3004ea3ac676921e7ac664b58daa8d387cf145f4dd7602bef7d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
