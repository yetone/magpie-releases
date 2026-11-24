class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4777/magpie-cli-darwin-arm64"
      sha256 "0ac263372281f14469a91133cd73eaa79221d4bedfdfecff0c8da4aa7226e150"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4777/magpie-cli-darwin-amd64"
      sha256 "76ea41cd189afa812593c2d0a6ba552cf6739c773c85a0a36e2851c2b542df71"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4777/magpie-cli-linux-arm64"
      sha256 "8ef2e33b152ae027ed3e1a282f0aefd1348dfcd766b66d7e55cadf5db0284e47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4777/magpie-cli-linux-amd64"
      sha256 "671632057cff98ebf64412bbe4c736f3090ae43bd6d662e7808840d3db758e4d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
