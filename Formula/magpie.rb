class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2004/magpie-cli-darwin-arm64"
      sha256 "47c67b14da41138e5657736062a32990246d831d3113591d9aa308f22a63a046"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2004/magpie-cli-darwin-amd64"
      sha256 "224c5b2298dbe9734fe7a4a0812f8369abbbc25acd1a8b61fd95e30ec23580f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2004/magpie-cli-linux-arm64"
      sha256 "63a22ed2a82e786b8dd56ac084dbda01f9e9516bb5bb9f61f335924b73925f3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2004/magpie-cli-linux-amd64"
      sha256 "934bf0cde96e792f1300fb9df33d1c7a612e2ebd6e72ee5349263e2a9e7109cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
