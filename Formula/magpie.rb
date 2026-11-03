class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2780/magpie-cli-darwin-arm64"
      sha256 "5f254a20586480e67acf027ce16abacfd3516adbc4a58340850cff48394f9f46"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2780/magpie-cli-darwin-amd64"
      sha256 "0e62f41e037c207264297d0a234fb172e855b52e9fa118c85a0579ba049ee2b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2780/magpie-cli-linux-arm64"
      sha256 "fe5922034e7f89b650906c6f40efa4a04ecd1bf324e9f915a8cf9b338397d7bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2780/magpie-cli-linux-amd64"
      sha256 "fa1a021e4ea3d0708040ce73c2e1dfcdb193b142adba90ff40ca8a683b404407"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
