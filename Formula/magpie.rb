class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.943/magpie-cli-darwin-arm64"
      sha256 "3e1b579489c6637ade64c33f71fc1f9c4ea1d3ddcd0bb3668b6925042817f0de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.943/magpie-cli-darwin-amd64"
      sha256 "06576e59759e42e0b47ebd193e7832b4265246dad8856cfa80912abe43a9d7e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.943/magpie-cli-linux-arm64"
      sha256 "33c058ad98cba54f38c686eaede73822fc63481a102b986ecdbd610aa69fc78b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.943/magpie-cli-linux-amd64"
      sha256 "0d4131821ecc997c039edd56ef28de9ab441051018224d990af26b9c10c24607"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
