class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4755/magpie-cli-darwin-arm64"
      sha256 "5546238c08e1cf42d7eea4df2699381becc2bf89dba5dcecebaa7adca2e5ec23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4755/magpie-cli-darwin-amd64"
      sha256 "04d43152794df596bdf56b6e56baf3462099421af265ce1d0831a0317c899eb8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4755/magpie-cli-linux-arm64"
      sha256 "375f3a962e2bd7724b4a4e15aa8d49d5da6339dd22d661699c5b7b70b2a915dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4755/magpie-cli-linux-amd64"
      sha256 "8185f1971196fd6bf2618b5c2cb0faa25fcc3ba64906cf6d893717d577e306c6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
