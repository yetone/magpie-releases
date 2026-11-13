class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3990/magpie-cli-darwin-arm64"
      sha256 "a88be7926382ecf7a645ad91cd050068d9f3896615351b27db38c549e4e97293"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3990/magpie-cli-darwin-amd64"
      sha256 "bcbcc3a3931e8fa1798999fa0094fc879fd912acf7f0c32c0152ba07dbb108de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3990/magpie-cli-linux-arm64"
      sha256 "84a9bb9509ad98c3fffc8fed468380ceef7d004676d0280998f352b8d793a028"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3990/magpie-cli-linux-amd64"
      sha256 "d7362584126d1270a33e359f5be1a3a3f8694848da1a10e60e99f1ab88b31f50"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
