class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4756/magpie-cli-darwin-arm64"
      sha256 "61d6b3b17c7ad06ccdd887f2a30e8fd0c538afae290917d99e1226282eb2bf0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4756/magpie-cli-darwin-amd64"
      sha256 "74c4f1d3669d4e085f13c113b3290e74c49405cf90387744a9b9671ddbce1532"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4756/magpie-cli-linux-arm64"
      sha256 "499ccff539881689a61f1498bf9175719ff897eb6f85d63f1dcc4573c53b5c86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4756/magpie-cli-linux-amd64"
      sha256 "31e61843be0d368ccefedfdfb8b051adca1dfa78c0a3919d379fd76a82d51c6a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
