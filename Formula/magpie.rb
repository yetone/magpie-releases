class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2430/magpie-cli-darwin-arm64"
      sha256 "ddabdede8485e117d4545f1d4e84be451fa5ada09fc6d389e04f94d5066d05c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2430/magpie-cli-darwin-amd64"
      sha256 "bd9b4b752dd35be0effd752e797ac63c6110d199a7b31bf18e1c232b49fd9255"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2430/magpie-cli-linux-arm64"
      sha256 "c3bae34eec771bbb8f8a60b32ce7888dd7ece963cc00c5f452deba1903a44e70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2430/magpie-cli-linux-amd64"
      sha256 "22aba734bf22fe54b1cf059357b20fa41afe696ff8697f9a9aef60ad095d198f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
