class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3916/magpie-cli-darwin-arm64"
      sha256 "fbcc578816c8163592b8e0095934bb5a0c46bad24c1ccba61ebd194e215a03b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3916/magpie-cli-darwin-amd64"
      sha256 "c6b54ea0c90a894c23bfc4785ad2d65265da618cc33815d3a34a5e401ae8978a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3916/magpie-cli-linux-arm64"
      sha256 "9f4627431d38cdc969099dabc4d4005161162a2591c2f33a1132d97127d6b682"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3916/magpie-cli-linux-amd64"
      sha256 "b8b15cc973202ba65ad0b75ab00fd429d7d996cbb687b3a54b93f1b6be02dffd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
