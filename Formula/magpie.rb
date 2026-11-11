class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3742/magpie-cli-darwin-arm64"
      sha256 "ff774d539f9b6e025a7ff75601f59ad7831446a92a7d553ee2de0bcdf4f08eaa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3742/magpie-cli-darwin-amd64"
      sha256 "cff952a97f9e58d678428d1e369e5b3f488da1aef4f5e579783cae7df5c81b6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3742/magpie-cli-linux-arm64"
      sha256 "a897546e8548ef4c6b68eb29e013db064e1413957708bd0354a11226d9848a23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3742/magpie-cli-linux-amd64"
      sha256 "0a48bd86be7ee4e6a6cb01fa3f00b761de33626dbd91d33299310f13759ccce7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
