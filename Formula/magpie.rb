class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3126/magpie-cli-darwin-arm64"
      sha256 "dbfba2c87e7671c7952c1c0179edd391b5ae18a60b7bdc163f962f7152163f64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3126/magpie-cli-darwin-amd64"
      sha256 "7b674165ef7d770c01895d73e36cd7b712f24f05c870f48f8a899fb99804e926"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3126/magpie-cli-linux-arm64"
      sha256 "93eaca141ef831abd994114269870840087ab92d34f17abbbdbc145bc9c86e86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3126/magpie-cli-linux-amd64"
      sha256 "2bac02e27e6c225a58483bcc52f6e2f94f3d51621291b6f0b5ed19acb99d0583"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
