class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3721/magpie-cli-darwin-arm64"
      sha256 "833a487814e2b15164c3350ed527b248fa19f41d7b2a4ded9d263ecc221752d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3721/magpie-cli-darwin-amd64"
      sha256 "8b851db5e9c7db77bb70aff8943762b8e22ae784de6892725d613bec4a59725a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3721/magpie-cli-linux-arm64"
      sha256 "63a6645bd0c30a9f428617ef56d66fb043b3044ea9a61986acf06e19aa913cfc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3721/magpie-cli-linux-amd64"
      sha256 "f7b355610df932920c7e3d0ad51fc1ab093a96ae2c2f543ec18d216646c230e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
