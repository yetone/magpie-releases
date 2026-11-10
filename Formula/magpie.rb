class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3622/magpie-cli-darwin-arm64"
      sha256 "604d065753893023ec0d374f578490f5269ef64a4ed16dd92192b1ff9be9dc62"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3622/magpie-cli-darwin-amd64"
      sha256 "199755e16ce7a7edaa41fb8d01da4cd5905d8942ed07fd86528ac990654c2bed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3622/magpie-cli-linux-arm64"
      sha256 "76011cf58d2ab34d6492da76da1b9062281dbe276ec75e564af6a67edaf284d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3622/magpie-cli-linux-amd64"
      sha256 "6fcc5afa671380fb0c304effd38ad9b93852d12e1c7a16943ed778ffafb666e5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
