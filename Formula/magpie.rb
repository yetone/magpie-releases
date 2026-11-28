class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4995/magpie-cli-darwin-arm64"
      sha256 "0d3ff877632dd3b1e48c631a8ea93c5d8537ef897952f1ed541c7c3f0aac1567"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4995/magpie-cli-darwin-amd64"
      sha256 "79de21bcafcc7c23a74b4ca104d79d91927971d319456c18a8904c5142be174d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4995/magpie-cli-linux-arm64"
      sha256 "dfc6e8be9c077d69f455c9c33efd02bf4c9b44d47409a88de299a58bb059ccd4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4995/magpie-cli-linux-amd64"
      sha256 "c12d9957be2486762dcecf084bbf1371627965f0be5a6de0ced77f4d6d770192"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
