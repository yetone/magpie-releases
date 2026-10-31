class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2441/magpie-cli-darwin-arm64"
      sha256 "a33c37bfe5b84768ce9bf929ae5aef225d7056149ac50cf7ebc85297c34f527b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2441/magpie-cli-darwin-amd64"
      sha256 "98874976d5040e5d812cfed11ed77dbd54f180409a71c840f11449455b0bad98"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2441/magpie-cli-linux-arm64"
      sha256 "1e6be7f90d2f29437bd0aea33f967b0b0759d9ddb3221338b3f24df2eb3c326d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2441/magpie-cli-linux-amd64"
      sha256 "2750a489e8e46e5c7945c3085fd3c5b0019dc88028331a3e2c55f7dacf765b0e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
