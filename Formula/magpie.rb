class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3714/magpie-cli-darwin-arm64"
      sha256 "d1abd441d6e2018f5121f923972d355aeedafc37755268631b35bfdf8a22133b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3714/magpie-cli-darwin-amd64"
      sha256 "6bfb281666ee8b22ac1eae915f3f7669edec1c2172aaa56604101f2f437fb7b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3714/magpie-cli-linux-arm64"
      sha256 "d60f5387c038fcd1ad2872325d58e68f60bc73d763fcfcc78443e205e44835d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3714/magpie-cli-linux-amd64"
      sha256 "de88406538cdb191f3edd6d92a34d39a6a78ae8bb0f45f5ac677d982d32d1c1a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
