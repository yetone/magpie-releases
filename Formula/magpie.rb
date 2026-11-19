class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4555/magpie-cli-darwin-arm64"
      sha256 "a0a74d1f72cda74c024cea01549afdd3f082f77cc017fc692a32da38c651ca00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4555/magpie-cli-darwin-amd64"
      sha256 "f05a4a38020ce6c2794b24327d7372f1bc9d4cab2b68fc8ef8d74e4cbe33427c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4555/magpie-cli-linux-arm64"
      sha256 "110c784097f32c7aff3119daf94192dc1ce3aea813050861f360dd57cc0c5f32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4555/magpie-cli-linux-amd64"
      sha256 "cadbdc2a4c372d1ffc95e7dcd0b763aad1be215b514a0156a7a93a157d2f7625"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
