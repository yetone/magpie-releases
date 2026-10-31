class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2381/magpie-cli-darwin-arm64"
      sha256 "f767896fb9cb0538ee1f8d6a3f8f4c3cba5050f537ca4b3a4ef270e270e9f651"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2381/magpie-cli-darwin-amd64"
      sha256 "bde69f25fe04473e7566c8c984f52a159088db21ced352da7ccf88e2f7b42141"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2381/magpie-cli-linux-arm64"
      sha256 "0f56ace74469ac33197c65df19861c4764d2baafcdb3a88c0aff2be5f05d6c0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2381/magpie-cli-linux-amd64"
      sha256 "0362b6259fedbf13c1a7e2f2347efa4ecd928a55a1a7331e167d01461455dd5f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
