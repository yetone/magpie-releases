class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3228/magpie-cli-darwin-arm64"
      sha256 "27dc9e4131a2d37abff9dc72fadf4be781e1d973280f12c93eabb0212f9cfe72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3228/magpie-cli-darwin-amd64"
      sha256 "c6b854a7e31543f7f4aae8abf39b7a13b619a29c730398073d440059f84a4eef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3228/magpie-cli-linux-arm64"
      sha256 "fb184f5b60c8c3fa7d08f2c6b096d9179cc407e044f186a53b3849d2c9fb6cc9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3228/magpie-cli-linux-amd64"
      sha256 "05232e50274bd6b3645563c21111193c0e0715fc14ccc038a00f418cc1e7d943"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
