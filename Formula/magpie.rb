class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2788/magpie-cli-darwin-arm64"
      sha256 "7619da7fa314907700c598d426531eced714099b5d1a4f347e0ba1f747081f4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2788/magpie-cli-darwin-amd64"
      sha256 "e31c5c8e9685bf23a553db2e6da2b90c42093c101c7bc6720c91b2868b4d317c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2788/magpie-cli-linux-arm64"
      sha256 "622a34be1918b8bd203fd62b27323cc61cba0b081cd25edbfa973213b90c5e19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2788/magpie-cli-linux-amd64"
      sha256 "86d143cc23d26eaf257cec8c4f84f34d1c958f93df6a5da6045c23737cf20323"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
