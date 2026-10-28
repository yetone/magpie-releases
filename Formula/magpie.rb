class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1848/magpie-cli-darwin-arm64"
      sha256 "6c8e8813c554910174a0695df0fcda620e006f0798f7b192d05786dc7cd8ddf7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1848/magpie-cli-darwin-amd64"
      sha256 "0bcbe5fa66d18c2aa468437fa8ae37d8f0a74feb8bf6e1efb0dd67dcbf9823e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1848/magpie-cli-linux-arm64"
      sha256 "27cd9e8b436fb9d48b1d203cba02a8cb70669ae0bdd9ebf452c3dd3a165bce28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1848/magpie-cli-linux-amd64"
      sha256 "887e30c7a9adfb6b9197ff36881f9615f204ff32802d9b9ac956fbe905d56f01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
