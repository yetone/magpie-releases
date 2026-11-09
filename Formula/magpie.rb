class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3394/magpie-cli-darwin-arm64"
      sha256 "67baf0ea5c28f07eceda042dc452a1d13be41542e65648ef18eccb139c1fda93"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3394/magpie-cli-darwin-amd64"
      sha256 "6dab0cd225d7fae518027ef281dd15476d2f8da06cbd8506d1edd48d9fe8a2b0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3394/magpie-cli-linux-arm64"
      sha256 "f133b0476f5330375f135b0542b3eae7aff493a78cc394773bc612e8066a9da5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3394/magpie-cli-linux-amd64"
      sha256 "58f260a8b326dd19f4b35ab75fac6d632628c5cf7871784b0f593932d23b600d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
