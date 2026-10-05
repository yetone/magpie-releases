class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1038/magpie-cli-darwin-arm64"
      sha256 "c6ab807b689b78b4bacd2f589edbc69ef50f10df139719f9c943b68af7bee1d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1038/magpie-cli-darwin-amd64"
      sha256 "81fdc9ca755936eb6fe77d54c09a144651e7f57ec995e341f291848dfe7614c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1038/magpie-cli-linux-arm64"
      sha256 "7b70a364912f3f5c044e6510e633dca47250577d3efb5f1c9256ef6b6d72ef87"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1038/magpie-cli-linux-amd64"
      sha256 "0809424fdca756a4ea36abd27d5b633ea10f180ecf4be34bc8d97da7de2e1226"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
