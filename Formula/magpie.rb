class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4473/magpie-cli-darwin-arm64"
      sha256 "5c8320a9f2fdb8e21a6cf58da7bd831bb58879efba41aa4eac3617af57d8bbe6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4473/magpie-cli-darwin-amd64"
      sha256 "7e81816934a2d61fe79067561e2ae02195119a735caca6d0ed0c1ac50f80049c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4473/magpie-cli-linux-arm64"
      sha256 "cb9883aaffdacaa471de8205007ac8e00fa152612f198d66d388cd285e7ada7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4473/magpie-cli-linux-amd64"
      sha256 "c55bedfff79c8f2ccb66a22f23bacd74482e4f46cf8245b88888f39ef02d7925"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
