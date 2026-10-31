class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2313/magpie-cli-darwin-arm64"
      sha256 "c76cd4360b53717eab96cff2073d1669d5b8212de666529c5795babb24f345ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2313/magpie-cli-darwin-amd64"
      sha256 "cfb9101b1f1fd128c412b0ded16d2e0984b6815f598e1043a80ff7f3926adeb4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2313/magpie-cli-linux-arm64"
      sha256 "4d2229e0c6225afd3126be7062e63c4f6bffa79efa80797ccbdb768012e497b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2313/magpie-cli-linux-amd64"
      sha256 "5b0aaebf8314dd9e7d3d315e6e39360e4be2e8a53d9f5b2a6ca206ceb0d78f8b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
