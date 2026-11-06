class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3107/magpie-cli-darwin-arm64"
      sha256 "083d4ee632171c874531b6d93e3b66fdbac80a96d5f3f84d76cea34da247265c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3107/magpie-cli-darwin-amd64"
      sha256 "07452b8ae08e6eefa5d2b718d1cbf81a9989d35a0e189cc1b56ff360888edff5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3107/magpie-cli-linux-arm64"
      sha256 "b60964043393b0bee306b0779b9cc14857851370449f8e035ebb250db4b8842d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3107/magpie-cli-linux-amd64"
      sha256 "db10c7f66698b9a7452003819a484315c4512e428cb65de79e48c79c173e9cd7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
