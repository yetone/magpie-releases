class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2530/magpie-cli-darwin-arm64"
      sha256 "8d3ab226cd519de5dd25f73d46ac04c932bc1f00488824564058dd541d4b02bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2530/magpie-cli-darwin-amd64"
      sha256 "999a7ee336a9fcb5e59407d60ea9adfa25442c78cc44eab4edf4517648048503"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2530/magpie-cli-linux-arm64"
      sha256 "d7b4556e3d1fe9b54eba1056d8051e103b82906342d5eab95e436b50c9ca0801"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2530/magpie-cli-linux-amd64"
      sha256 "1a77f33922c8252f663fd32b571d42cb3059c80f5397a231dfb3b7647b10ed3a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
