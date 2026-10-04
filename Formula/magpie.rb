class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.895/magpie-cli-darwin-arm64"
      sha256 "7bb1a90cfab03b560381ee7facd15588cf87000f79e099a1404258a4b1add0fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.895/magpie-cli-darwin-amd64"
      sha256 "d934dd8a8647b90397b0b625bb3f508cfa87b3713284881e13647a6b3f6f2b57"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.895/magpie-cli-linux-arm64"
      sha256 "45b58fa8a8422db8d9f1dcbcb2e87e77608ff317d07de0e3dcbb6d59b670be92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.895/magpie-cli-linux-amd64"
      sha256 "3194f2c53ccc1142bfa017e1ff9f978aa07fc6e2b52f45d40b40303e295b8b4e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
