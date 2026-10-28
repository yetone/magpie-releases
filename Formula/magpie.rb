class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1882/magpie-cli-darwin-arm64"
      sha256 "e6f074fa23be5a683843eac034c890179654569df0829d871328dde881b20daf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1882/magpie-cli-darwin-amd64"
      sha256 "e2f57a9bcb2dbb3b607bd58019005e4efb1228efae334b995654cf40822621ac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1882/magpie-cli-linux-arm64"
      sha256 "7efcc88337af518cc774660ef096e3bb82148d6d4474872aede6d44be3148367"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1882/magpie-cli-linux-amd64"
      sha256 "091a1acf69419c4daf253c5527cab301cf19c0bec16044ca55566fc8f61b78bc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
