class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3257/magpie-cli-darwin-arm64"
      sha256 "c77118736df780eb0f8c6266d7f833870e85fba0fca96e12fb9904ec1c0b349f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3257/magpie-cli-darwin-amd64"
      sha256 "1419ac460980d5a5258757c327e19bbeb19e05d28cc019a8a1fb7a761feec850"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3257/magpie-cli-linux-arm64"
      sha256 "7dd00e1f0fac2c0c7954ce2de390066cd77df9b070503b9b2d14b1a1ec9ba817"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3257/magpie-cli-linux-amd64"
      sha256 "f4d31b93a9f1928a1dba5fba15c23fd4df4c559d8ef1a1f9aaaead6f02c01366"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
