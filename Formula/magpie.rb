class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4739/magpie-cli-darwin-arm64"
      sha256 "e79ffd2148843428fe46a6f5128a7f6bbb435301f6f40b04f87bea52f60470d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4739/magpie-cli-darwin-amd64"
      sha256 "70d4ee4837851a63ef932ae78188350125a2cf55bc5ab120bf0c287c93628fe1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4739/magpie-cli-linux-arm64"
      sha256 "a0f6a875190f8a59a11097547a668eda03fef43d7a1087340e8bdc7d6f21c5f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4739/magpie-cli-linux-amd64"
      sha256 "13e8a9f93a890b0f11c3fa8b57b47168d7275839acbaf0a6d6729f7359a2d286"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
