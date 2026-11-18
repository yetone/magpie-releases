class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4462/magpie-cli-darwin-arm64"
      sha256 "8e80e182b109545acfbe86d591e1a3881e8cef974775cf0e81c4754ee54ad7d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4462/magpie-cli-darwin-amd64"
      sha256 "7224b9431071382a7eab04aa84ebeefe2bef2560b8b0bcf0fef68a9663cf9808"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4462/magpie-cli-linux-arm64"
      sha256 "e4366aac334bee3452593b3c6a0dd849d6061540edfbfc908f6e4c5005efbea0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4462/magpie-cli-linux-amd64"
      sha256 "81cfdcb3f86942d36634a1d1589692c439e04b63ebde43301d59ad1efa701097"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
