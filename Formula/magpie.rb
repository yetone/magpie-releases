class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2398/magpie-cli-darwin-arm64"
      sha256 "ad6aefb850bd2c34237486d332d83c3fdfbf5006e8f079e021d969227aad3cf0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2398/magpie-cli-darwin-amd64"
      sha256 "d902d1a22450061fbcfab748d2f88b0ff8c825dc126b73bc44de1a3b276f000e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2398/magpie-cli-linux-arm64"
      sha256 "4695f728caa77abbbb1dd124b5c65fc0f2049765fdf3b11d9100ab62a5b94a73"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2398/magpie-cli-linux-amd64"
      sha256 "ec68aab7402a8e3befb8ed8cc81245e8591855d83cd0e769aaf2ac154fc82b99"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
