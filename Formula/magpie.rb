class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3269/magpie-cli-darwin-arm64"
      sha256 "7e67946ce303d456b8773de19f09fcb8e2a7cc1789b49ccd4faba218c73ced01"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3269/magpie-cli-darwin-amd64"
      sha256 "e3e6be3e48c9ffe138241d453184296b2ac93b62e49593bb7eff79a210396d51"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3269/magpie-cli-linux-arm64"
      sha256 "4178da5d4c4c0fe87df50cc523d78cf9c6b0ec50a07205e69ca336b377b9d67a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3269/magpie-cli-linux-amd64"
      sha256 "747acbe97e2a8fc0d13ff7a3cddf050de6a4d92a94b2ff3ac635919d9439d192"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
